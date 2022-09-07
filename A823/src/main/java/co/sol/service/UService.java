package co.sol.service;

import java.util.List;

import co.sol.main.DVO;
import co.sol.main.UVO;

public interface UService {

	void join(UVO user, DVO discord);
	void modify(UVO user);
	void leave(UVO user);
	String getId(UVO user);
	String getPw(UVO user);
	String getEmail(UVO user);
	void newPw(UVO user);
	UVO getUser(UVO user);
	void addDiscord(UVO user, DVO discord);
	List<DVO> getDiscord(UVO user);

}
