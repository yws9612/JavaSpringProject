package co.sol.service;

import java.util.List;

import co.sol.main.CVO;

public interface CService {
	
	List<CVO> getList(int b_no);
	void comment(CVO comment);
	void recomment(CVO comment);
	void modify(CVO comment);
	void delete(CVO comment);
	void insert_comment(CVO comment);
	void insert_recomment(CVO comment);
	void update_step(CVO comment);

}
