package co.sol.mapper;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UMapperTests {
	
//	public void join(UVO user, DVO discord);
//	public void modify(UVO user);
//	public void leave(UVO user);
//	public String getId(UVO user);
//	public String getPw(UVO user);
//	public String getEmail(UVO user);
//	public void newPw(UVO user);
//	public UVO getUser(UVO user);
//	public void addDiscord(UVO user, DVO discord);
//	public void getDiscord(UVO user);

	@Autowired
	private UMapper mpr;
}
