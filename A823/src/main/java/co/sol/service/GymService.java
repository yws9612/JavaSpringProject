package co.sol.service;

import java.util.List;
import java.util.Map;

import co.sol.main.GVO;
import co.sol.main.RVO;

public interface GymService {
	
	List<GVO> getList(String search);
	List<Map<String, Object>> getReview(int g_no);
	GVO getOneGym(int g_no);
	void newreview(RVO review);

}
