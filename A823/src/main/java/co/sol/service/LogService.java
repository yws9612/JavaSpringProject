package co.sol.service;

import java.util.List;

import co.sol.main.LVO;
import co.sol.main.UVO;

public interface LogService {
	
	List<LVO> getList(UVO user);
	void scrap(LVO log);

}
