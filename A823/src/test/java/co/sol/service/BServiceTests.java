package co.sol.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.sol.main.BVO;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BServiceTests {
	
	@Autowired
	private BService service;
	
	@Test
	public void aa() {
		log.info(service);
	}
	
	@Test
	public void testsubmit() {
		BVO bb=new BVO();
		
		bb.setTitle("spring");
		bb.setContent("fun");
		bb.setWriter("shinwoo");
		
		log.info(service.submit(bb));
	}
	
	@Test
	public void testlist() {
		log.info(service.getList());
	}
	
	@Test
	public void testget() {
		log.info(service.get(21));
	}
	
	@Test
	public void testmodify() {
		BVO bb=service.get(21);
		
		if(bb==null) {
			return;
		}
		bb.setWriter("글쓴이 변경");
		log.info(service.modify(bb));
	}
	
	@Test
	public  void testdel() {
		log.info(service.del(21));
	}	
}










