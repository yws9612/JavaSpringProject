package co.sol.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import co.sol.main.*;

public interface UMapper {

	public void join(HashMap<String, Object> map) throws Exception;
	public void modify(UVO user);
	public void leave(UVO user);
	public String getId(UVO user);
	public String getPw(UVO user);
	public String getEmail(UVO user);
	public void newPw(UVO user);
	public UVO getUser(UVO user);
	public void addDiscord(DVO discord);
	public List<Map<String, Integer>> getDiscord(int u_no); 	 
	public UVO selectById(String id);
	public List<DVO> getBMIList(int u_no);
	public UserInfo loginAuth(LoginCommand loginCommand) throws Exception;
	public void updateReported(int reported);
	public int checkOverId(UVO u_id);
	public int checkOverEmail(UVO u_email);
}
