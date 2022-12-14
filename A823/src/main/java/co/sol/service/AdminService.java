package co.sol.service;


import java.util.List;

import org.json.simple.JSONObject;

import co.sol.main.LVO;
import co.sol.main.UVO;

public interface AdminService {
	
	JSONObject getBoardcnt();
	JSONObject getUsercnt();
	List<UVO> getUserList();
	List<LVO> getReportList(int u_no);

}
