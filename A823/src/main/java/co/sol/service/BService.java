package co.sol.service;

import java.util.List;
import co.sol.main.BVO;
import co.sol.main.Basic;

public interface BService {
	
	Long submit(BVO bo);
	
	BVO get(int bnum);
	
	int modify(BVO bo);
	
	int del(int bnum);
	
	List<BVO> getList();
	
	List<BVO> getPage(Basic ba);
	
	int getTotal(Basic cri);
}
