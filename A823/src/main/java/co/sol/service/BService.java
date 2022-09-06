package co.sol.service;

import java.util.List;
import co.sol.main.BVO;
import co.sol.main.Basic;

public interface BService {
	
	int submit(BVO bo);
	
	BVO get(int b_no);
	
	int modify(BVO bo);
	
	int del(int b_no);
	
	List<BVO> getList();
	
	List<BVO> getPage(Basic ba);
	
	int getTotal(Basic cri);
	
	List<BVO> topList();
}
