package co.sol.mapper;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.sol.main.EVO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class DataMapperTests {
	
//	public List<EVO> getEList(EVO exercise);
//	public void addExercise(EVO exercise);
	
	@Autowired
	private DataMapper mpr;
	
	
	@Test
	public void getList_test() {
		log.info(mpr.getEList(null));
	}
	@Test
	public void getList_test2() {
		EVO e=new EVO();
		e.setE_div("짐트");
		log.info(mpr.getEList(e));
	}
	
	@Test
	public void add_test() {
		EVO e=new EVO();
		e.setE_div("짐트");
		e.setE_name("teststtest테스트");
		mpr.addExercise(e);		
	}
	
	
}
