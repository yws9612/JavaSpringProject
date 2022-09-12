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
	public List<Map<String, Integer>> getDiscord(UVO user); 	 
	public UVO selectById(String id);
	public UserInfo loginAuth(LoginCommand loginCommand) throws Exception;
	
}
