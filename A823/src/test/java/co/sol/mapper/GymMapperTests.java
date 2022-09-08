package co.sol.mapper;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class GymMapperTests {
	
//	public List<GVO> getList();
//	public List<GVO> getLocalList(String addr);
//	public List<RVO> getReview(GVO gym);
//	public GVO getOneGym(GVO gym);

	@Autowired
	private GymMapper mpr;
}
