package co.sol.service;

import java.util.List;
import java.util.Map;

public interface AdminService {
	
	List<Map<String, Integer>> getBoardcnt();
	List<Map<String, Integer>> getUsercnt();

}
