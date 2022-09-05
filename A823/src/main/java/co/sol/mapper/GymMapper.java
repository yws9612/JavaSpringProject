package co.sol.mapper;

import java.util.List;
import co.sol.main.*;

public interface GymMapper {
	
	public List<GVO> getList();
	public List<GVO> getLocalList(String addr);
	public List<RVO> getReview(GVO gym);
	public GVO getOneGym(GVO gym);

}
