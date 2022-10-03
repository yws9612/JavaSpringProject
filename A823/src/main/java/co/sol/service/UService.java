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
	void addDiscord(DVO discord);
	JSONObject getDiscord(int u_no);
	UVO selectById(String id);
	List<DVO> getBMIList(int u_no);
	public int checkOverId(UVO u_id);
	public int checkOverEmail(UVO u_email);
	public UserInfo loginAuth(LoginCommand loginCommand) throws Exception;
}
