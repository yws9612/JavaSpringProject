package co.sol.mapper;

import java.util.List;
import java.util.Map;



import co.sol.main.BVO;
import co.sol.main.Basic;

public interface BMapper {

	public List<BVO> getList();
	
	public void insert(BVO bo);
	
	public void inkey(BVO bo);
	
	public BVO sel(int bnum);
	
	public int del(int bnum);
	
	public int up(BVO bo);
	
	public List<BVO> getPage(Basic ba);
	
	public int getCount(Basic ba);
	
	public List<BVO> search(Map<String, Map<String, String>> map);

	
}
