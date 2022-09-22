package co.sol.mapper;

import java.util.List;
import java.util.Map;

import co.sol.main.*;

public interface GymMapper {
	
	public List<GVO> getList(String search);
	public List<Map<String, Object>> getReview(int g_no);
	public GVO getOneGym(int g_no);
	public void newreview(RVO review);

}
