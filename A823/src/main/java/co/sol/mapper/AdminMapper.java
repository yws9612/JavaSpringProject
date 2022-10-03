package co.sol.mapper;

import java.util.List;
import java.util.Map;

import co.sol.main.LVO;
import co.sol.main.UVO;

public interface AdminMapper {
	
	public List<Map<String, Integer>> getBoardcnt();
	public List<Map<String, Integer>> getUsercnt();
	public List<UVO> getUserList();
	public List<LVO> getReportList(int u_no);
	

}
