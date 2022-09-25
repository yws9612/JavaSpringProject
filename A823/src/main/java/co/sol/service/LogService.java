package co.sol.service;

import java.util.List;
import java.util.Map;

import co.sol.main.LVO;
import co.sol.main.UVO;

public interface LogService {
	
//	List<Map<String, Object>> getList(UVO user);
	List<LVO> getList_Scrap(int u_no);
	List<LVO> getList_Board(int u_no);
	List<LVO> getList_Comment(int u_no);
	List<LVO> getList_Review(int u_no);
	void scrap(LVO log);
	boolean checkscrap(LVO log);
	void deletescrap(int u_no, int b_no);
	void report(LVO log);
	boolean checkreport(LVO log);

}
