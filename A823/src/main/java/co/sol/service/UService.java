package co.sol.service;

import co.sol.main.UVO;

public interface UService {

	public String getId(UVO user);
	public void updatePw(UVO user);
	public String getEmail(UVO user);
}
