package co.sol.service;

import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

import co.sol.main.LVO;
import co.sol.main.UVO;
import co.sol.mapper.AdminMapper;
import lombok.RequiredArgsConstructor;


@Service
@RequiredArgsConstructor 
public class AdminServiceImpl implements AdminService {
	
	private final AdminMapper mpr;

	@Override
	public JSONObject getBoardcnt() {
		List<Map<String, Integer>> list = mpr.getBoardcnt();		
		
		JSONObject data = new JSONObject();		
		
		//1. cols 배열에 넣기
		JSONObject col1 = new JSONObject();
		JSONObject col2 = new JSONObject();		
		JSONArray title = new JSONArray(); 
		col1.put("label", "B_DIV");
		col1.put("type", "string");
		col2.put("label", "COUNT(B_DIV)");
		col2.put("type", "number");
		
		title.add(col1);
		title.add(col2);
		
		data.put("cols", title);
		
		
		//2. rows 배열에 넣기
		JSONArray body = new JSONArray();	//rows
		for(Map<String, Integer> map : list) {
			JSONObject b_div = new JSONObject();
			b_div.put("v", map.get("B_DIV"));
			JSONObject cnt = new JSONObject();
			cnt.put("v", map.get("COUNT(B_DIV)"));
			
			JSONArray row = new JSONArray();
			row.add(b_div);
			row.add(cnt);
			
			JSONObject cell = new JSONObject();
			cell.put("c", row);
			
			body.add(cell); //레코드 1행 추가					
		} //end for
		
		data.put("rows", body);		
		
		return data;
	}

	@Override
	public JSONObject getUsercnt() {
		List<Map<String, Integer>> list = mpr.getUsercnt();
		
		JSONObject data = new JSONObject();		
		
		//1. cols 배열에 넣기
		JSONObject col1 = new JSONObject();
		JSONObject col2 = new JSONObject();	
		JSONObject col3 = new JSONObject();		
		JSONArray title = new JSONArray(); 
		col1.put("label", "가입월");
		col1.put("type", "string");
		col2.put("label", "가입 회원 수");
		col2.put("type", "number");
		col3.put("label", "누적 회원 수");
		col3.put("type", "number");
		
		title.add(col1);
		title.add(col2);
		title.add(col3);
		
		data.put("cols", title);
		
		
		//2. rows 배열에 넣기
		JSONArray body = new JSONArray();	//rows
		for(Map<String, Integer> map : list) {
			//System.out.println(map);
			JSONObject u_joindate = new JSONObject();
			u_joindate.put("v", map.get("JOINMONTH"));
			JSONObject cnt = new JSONObject();
			cnt.put("v", map.get("COUNT(*)"));
			JSONObject total = new JSONObject();
			total.put("v", map.get("TOTAL"));			
			
			
			JSONArray row = new JSONArray();
			row.add(u_joindate);
			row.add(cnt);
			row.add(total);
			
			JSONObject cell = new JSONObject();
			cell.put("c", row);
			
			body.add(cell); //레코드 1행 추가					
		} //end for
		
		data.put("rows", body);		
		
		return data;
	}

	
	
	@Override
	public List<UVO> getUserList() {
		return mpr.getUserList();
	}

	
	
	@Override
	public List<LVO> getReportList(int u_no) {
		return mpr.getReportList(u_no);
	}
	
	
	

}
