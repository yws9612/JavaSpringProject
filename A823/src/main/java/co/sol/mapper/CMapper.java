package co.sol.mapper;

import java.util.List;
import co.sol.main.*;

public interface CMapper {
	
	public List<CVO> getList(int b_no);
	public void insert(CVO comment);
	public void insert_re(CVO comment);
	public void update_level(CVO comment);
	public void modify(CVO comment);
	public void delete(CVO comment);

}
