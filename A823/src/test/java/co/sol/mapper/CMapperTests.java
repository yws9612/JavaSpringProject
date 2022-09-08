package co.sol.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.sol.main.*;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class CMapperTests {
	
//	public List<CVO> getList(int b_no);
//	public void insert(CVO comment);
//	public void modify(CVO comment);
//	public void delete(CVO comment);

	@Autowired
	private CMapper mpr;
	
	
	@Test
	public void insert_test() {
		CVO c=new CVO();
		c.setB_no(2);
		c.setC_con("aaaaaa한글도123");
		c.setC_writer("abc");
		mpr.insert(c);
	}
	
	@Test
	public void getList_test() {
		log.info(mpr.getList(2));
	}
	
	@Test
	public void modify_test() {
		CVO c=new CVO();
		c.setB_no(2);
		c.setC_con("수수수수수수정정ㅇ정정정abcabcabac213123");
		mpr.modify(c);
	}
	
	@Test
	public void delete_test() {
		CVO c=new CVO();
		c.setC_no(1);
		mpr.delete(c);
	}
	
	@Test
	public void updatelevel_test() {
		CVO c=new CVO();
		c.setB_no(2);
		c.setC_level(1);
		mpr.update_level(c);
	}
	
	@Test
	public void insertre_test() {
		CVO c=new CVO();
		c.setB_no(2);
		c.setC_step(1);
		c.setC_level(1);
		c.setC_con("addaddadd대댓대댓대댓");
		c.setC_writer("aaa");
		mpr.insert_re(c);		
	}
}
