package co.sol.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import co.sol.main.BVO;
import co.sol.main.Basic;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BMapperTests {
	
	@Autowired
	private BMapper bm;
	
	@Test
	public void testSearch() {
		Map<String, String> map=new HashMap<>();
		map.put("T", "TTT");
		map.put("C", "CCC");
		map.put("W", "WWW");
		
		Map<String, Map<String, String>> m=new HashMap<>();
		m.put("map", map);
		
		List<BVO> list=bm.search(m);
		
		log.info(list);
 		
		
	}
	
	@Test
	public void tt() {
		log.info(bm.getList());
	}
	
//	@Test
//	public void aa() {
//		BVO bb=new BVO();
//		bb.setTitle("�ȳ�");
//		bb.setContent("����");
//		bb.setWriter("�浿");
//		
//		bm.insert(bb);
//	}
//	
//	@Test
//	public void ee() {
//		BVO bb=new BVO();
//		
//		bb.setTitle("inkey");
//		bb.setContent("in");
//		bb.setWriter("insung");
//		
//		bm.inkey(bb);
//		System.out.println(bb.getBnum());
//	}
//
//	@Test
//	public void bb() {
//		BVO bb=bm.sel(2);
//		log.info(bb);
//	}
//	
//	@Test
//	public void cc() {
//		log.info(bm.del(102));
//	}
//	
//	@Test
//	public void dd() {
//		BVO bb=new BVO();
//		bb.setBnum(1L);
//		bb.setTitle("up");
//		bb.setContent("up");
//		bb.setWriter("jj");
//		
//		bm.up(bb);		
//		
//	}

	
}









