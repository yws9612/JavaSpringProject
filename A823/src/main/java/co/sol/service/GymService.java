package co.sol.service;

import java.util.List;

import co.sol.main.GVO;
import co.sol.main.RVO;

public interface GymService {
	
	public List<GVO> getList();
	public List<GVO> getLocalList(String addr);
	public List<RVO> getReview(GVO gym);
	public GVO getOneGym(GVO gym);

}
