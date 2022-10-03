package co.sol.mapper;

import java.util.List;

import co.sol.main.*;

public interface GymMapper {
	
	public List<GVO> getList(String search);
	public List<RVO> getReview(int g_no);
	public GVO getOneGym(int g_no);
	public void newreview(RVO review);
	public void deleteReview(int r_no);

}
