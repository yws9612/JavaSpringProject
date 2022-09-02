package co.sol.mapper;

import co.sol.main.DVO;
import co.sol.main.UVO;

public interface UMapper {

	//insert
	public void join(UVO user, DVO data);
	
	//update
//	public void Modify(UVO user);
	
	//delete
//	public void Leave(UVO user);
	
	public String getId(UVO user);
	public void updatePw(UVO user);
	public String getEmail(UVO user);
	public UVO getUser();
//	public List<BVO> Myboard(UVO user);
//	public List<BVO> getScrap(UVO user);
//	public void addDiscord(UVO user, DVO discord);
	
}