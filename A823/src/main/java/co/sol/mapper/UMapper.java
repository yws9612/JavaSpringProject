package co.sol.mapper;

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
	public void getDiscord(UVO user);
	public UVO selectById(String id);
	public UserInfo loginAuth(LoginCommand loginCommand) throws Exception;
	
}
