package co.sol.service;

import java.util.List;

import co.sol.main.LVO;
import co.sol.main.UVO;

public interface LogService {
	
	public List<LVO> getList(UVO user);
	public void scrap(LVO log);

}
