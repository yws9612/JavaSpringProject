
package co.sol.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml","file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j
public class BControllerTests {

  @Setter(onMethod_ = {@Autowired} )
  private WebApplicationContext ctx;
  
  private MockMvc mc;
  
  @Before
  public void setup() {
    this.mc = MockMvcBuilders.webAppContextSetup(ctx).build();
  }

  @Test
  public void testList() throws Exception {

    log.info(
        mc.perform(
            MockMvcRequestBuilders.get("/board/list"))
        .andReturn()
        .getModelAndView()
        .getModelMap());
  }
  @Test
  public void testSubmit() throws Exception {

    log.info(
        mc.perform(
            MockMvcRequestBuilders.post("/board/submit")
            .param("title", "테스트")
            .param("content", "내용테스트")
            .param("writer", "pink")
            )
        .andReturn());
}
  
  @Test
  public void testModi() throws Exception {
	  
	  log.info(
		        mc.perform(
		            MockMvcRequestBuilders.post("/board/modify")
		            .param("bnum", "81")
		            .param("title", "modify테스트")
		            .param("content", "modify테스트")
		            .param("writer", "modifypink")
		            )
		        .andReturn());
	  
  }
  
  @Test
  public void testDel() throws Exception {
	  
	  log.info(
		        mc.perform( MockMvcRequestBuilders.post("/board/del")
		        		.param("bnum", "81")).andReturn());
		        		
  }
  

}






