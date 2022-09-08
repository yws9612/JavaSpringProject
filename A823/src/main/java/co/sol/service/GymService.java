package co.sol.service;

import java.util.List;

import co.sol.main.GVO;
import co.sol.main.RVO;

public interface GymService {
	
	List<GVO> getList(String search);
	List<RVO> getReview(GVO gym);
	GVO getOneGym(GVO gym);

}
