package co.sol.service;

import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import co.sol.main.UVO;
import co.sol.mapper.UMapper;
import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor 
public class UServiceImpl implements UService {
	
	private final UMapper mpr;

	@Override
	public JSONObject getDiscord(UVO user) {
		
		//test용
		user.setU_no(3);
		
		List<Map<String, Integer>> list = mpr.getDiscord(user);
		System.out.println(list);
		
		JSONObject data = new JSONObject();		
		
		//1. cols 배열에 넣기
		JSONObject col1 = new JSONObject();
		JSONObject col2 = new JSONObject();	
		JSONObject col3 = new JSONObject();
		JSONObject col4 = new JSONObject();
		JSONObject col5 = new JSONObject();
		JSONObject col6 = new JSONObject();
		JSONObject col7 = new JSONObject();
		JSONArray title = new JSONArray(); 
		col1.put("label", "일자");
		col1.put("type", "string");
		col2.put("label", "under");
		col2.put("type", "number"); 
		col3.put("label", "normal");
		col3.put("type", "number");
		col4.put("label", "over");
		col4.put("type", "number");
		col5.put("label", "obese");
		col5.put("type", "number");
		col6.put("label", "e-obese");
		col6.put("type", "number");
		col7.put("label", "BMI");
		col7.put("type", "number");
		
		title.add(col1);
		title.add(col2);
		title.add(col3);
		title.add(col4);
		title.add(col5);
		title.add(col6);
		title.add(col7);
		
		data.put("cols", title);
		
		
		
		

		JSONObject a = new JSONObject();
		JSONObject b = new JSONObject();
		JSONObject c = new JSONObject();
		JSONObject d = new JSONObject();
		JSONObject e = new JSONObject();
		a.put("v", 18.5);
		b.put("v", 6.5);
		c.put("v", 5);
		d.put("v", 5);
		e.put("v", 10);
		
		
		//2. rows 배열에 넣기
		JSONArray body = new JSONArray();	//rows
		for(Map<String, Integer> map : list) {
			JSONObject d_date = new JSONObject();
			d_date.put("v", map.get("D_DATE"));
			JSONObject d_bmi = new JSONObject();
			d_bmi.put("v", map.get("D_BMI"));
			System.out.println(map.get("d_date")+"/"+map.get("d_bmi"));
			
			JSONArray row = new JSONArray();
			row.add(d_date);
			row.add(a);
			row.add(b);
			row.add(c);
			row.add(d);
			row.add(e);
			row.add(d_bmi);
			
			JSONObject cell = new JSONObject();
			cell.put("c", row);
			
			body.add(cell); //레코드 1행 추가					
		} //end for
		
		data.put("rows", body);		
		
		return data;
	}

}
