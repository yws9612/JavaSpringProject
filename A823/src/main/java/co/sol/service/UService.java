package co.sol.service;

import co.sol.main.DVO;
import co.sol.main.LoginCommand;
import co.sol.main.UVO;
import co.sol.main.UserInfo;

public interface UService {

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

	public UserInfo loginAuth(LoginCommand loginCommand) throws Exception;
}
