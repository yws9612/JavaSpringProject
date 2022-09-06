package co.sol.service;

import java.util.List;

import co.sol.main.CVO;

public interface CService {
	
	public List<CVO> getList(int b_no);
	public void comment(CVO comment);
	public void recomment(CVO comment);
	public void modify(CVO comment);
	public void delete(CVO comment);

}
