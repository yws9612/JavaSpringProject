package co.sol.service;

import java.util.List;

import org.json.simple.JSONObject;

import co.sol.main.DVO;
import co.sol.main.LoginCommand;
import co.sol.main.UVO;
import co.sol.main.UserInfo;

public interface UService {

	void join(UVO user, DVO discord) throws Exception;
	public void modify(UVO user);
	void leave(UVO user);
	String getId(UVO user);
	String getPw(UVO user);
	String getEmail(UVO user);
	void newPw(UVO user);
	UVO getUser(UVO user);
	void addDiscord(UVO user, DVO discord);
	JSONObject getDiscord(UVO user);

	public UserInfo loginAuth(LoginCommand loginCommand) throws Exception;
}
