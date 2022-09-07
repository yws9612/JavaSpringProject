package co.sol.mapper;

import java.util.List;

import co.sol.main.*;

public interface UMapper {

	public void join(UVO user, DVO discord);
	public void modify(UVO user);
	public void leave(UVO user);
	public String getId(UVO user);
	public String getPw(UVO user);
	public String getEmail(UVO user);
	public void newPw(UVO user);
	public UVO getUser(UVO user);
	public void addDiscord(UVO user, DVO discord);
	public List<DVO> getDiscord(UVO user);
	
}
