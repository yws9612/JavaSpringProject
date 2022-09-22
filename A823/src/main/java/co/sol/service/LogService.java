package co.sol.service;

import java.util.List;
import java.util.Map;

import co.sol.main.LVO;
import co.sol.main.UVO;

public interface LogService {
	
	List<Map<String, Object>> getList(UVO user);
	void scrap(LVO log);
	boolean checkscrap(LVO log);

}
