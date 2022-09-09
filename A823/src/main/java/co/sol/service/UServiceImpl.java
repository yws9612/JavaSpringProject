package co.sol.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.sol.exception.IdPasswordNotMatchingException;
import co.sol.main.DVO;
import co.sol.main.LoginCommand;
import co.sol.main.UVO;
import co.sol.main.UserInfo;
import co.sol.mapper.UMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@RequiredArgsConstructor
public class UServiceImpl implements UService {
	
	private final UMapper mpr;
	
	

	@Override
	public void join(UVO user, DVO discord) {
		mpr.join(user, discord);
	}

	@Override
	public void modify(UVO user) {
		mpr.modify(user);
	}

	@Override
	public void leave(UVO user) {
		mpr.leave(user);
	}

	@Override
	public String getId(UVO user) {
		return mpr.getId(user);
	}

	@Override
	public String getPw(UVO user) {
		return mpr.getPw(user);
	}

	@Override
	public String getEmail(UVO user) {
		return mpr.getEmail(user);
	}

	@Override
	public void newPw(UVO user) {
		mpr.newPw(user);
	}

	@Override
	public UVO getUser(UVO user) {
		return mpr.getUser(user);
	}

	@Override
	public void addDiscord(UVO user, DVO discord) {
		mpr.addDiscord(user, discord);
	}

	@Override 
	public JSONObject getDiscord(UVO user) { 
		 
		//test용 
		user.setU_no(3); 
		 
		List<Map<String, Integer>> list = mpr.getDiscord(user); 
		 
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
		col2.put("label", "저체중"); 
		col2.put("type", "number");  
		col3.put("label", "정상"); 
		col3.put("type", "number"); 
		col4.put("label", "과체중"); 
		col4.put("type", "number"); 
		col5.put("label", "비만"); 
		col5.put("type", "number"); 
		col6.put("label", "고도비만"); 
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
			d_date.put("v", map.get("DDATE")); 
			JSONObject d_bmi = new JSONObject(); 
			d_bmi.put("v", map.get("D_BMI")); 
			
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

	

	@Override
	public UserInfo loginAuth(LoginCommand loginCommand) throws Exception {
		// TODO Auto-generated method stub
		UVO uvo = mpr.selectById(loginCommand.getId());
		
		if(uvo == null) {
			throw new IdPasswordNotMatchingException();
		}
		if(!uvo.matchPassword(loginCommand.getPw())) {
			throw new IdPasswordNotMatchingException();
		}
		return new UserInfo(uvo.getU_id(), uvo.getU_addr(), uvo.getU_name(), uvo.getU_no());
	}
}
