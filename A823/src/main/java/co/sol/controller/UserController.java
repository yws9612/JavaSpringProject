package co.sol.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;

import co.sol.exception.IdPasswordNotMatchingException;
import co.sol.main.BVO;
import co.sol.main.DVO;
import co.sol.main.EVO;
import co.sol.main.LoginCommand;
import co.sol.main.UVO;
import co.sol.main.UserInfo;
import co.sol.mapper.BMapper;
import co.sol.service.BService;
import co.sol.service.DataService;
import co.sol.service.LogService;
import co.sol.service.UService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping({"/user/*","/main/*"})
public class UserController {
	
	private final UService uservice;
	private final BService bservice;
	private final DataService dataservice;
	
	
	
	//Find Id
	@GetMapping("/findID")
	public void findID() {
		
	}
	
	@PostMapping("/findIdProc")
	public String findIdProc(UVO uvo, Model m) {
		
		String id = uservice.getId(uvo);
		m.addAttribute("id", id);
		
		return "/user/findIdProc";
	}
	
	@GetMapping("/findIdProc")
	public void findIdProcg() {
		
	}
	
	//Find Pw
	@GetMapping("/findPW")
	public void findPW() {
		
	}
	
	@PostMapping("/findPW")
	public String findPWp(UVO uvo, Model m) {
		String id = uservice.getId(uvo);
		String email = uservice.getEmail(uvo);
		
		m.addAttribute("id", id);
		m.addAttribute("email", email);
		
		return "/user/findPwProc";
	}
	
	@GetMapping("/findPwProc")
	public void findPwProcg() {
		
	}
	
	@PostMapping("/findPwProc")
	public String findPwProc(UVO uvo, Model m) {
	
		uservice.newPw(uvo);
		
		return "/user/login";
	}
	
	//Sign Up
	@GetMapping("/join")
	public void getJoin() {
		
	}
	
	@PostMapping("/join")
	public String postJoin(@ModelAttribute("user")UVO user, @ModelAttribute("data")DVO data, BindingResult result) throws Exception {
		
		if(result.hasErrors()) {
			
			return "/user/join";
		}
		
		uservice.join(user, data);
		return "redirect:/user/login";
		
	}
	
	@GetMapping("/privacy")
	public String privacy() {
		
		return "/user/privacy";
	}
	
	@GetMapping("/service")
	public String termsOfService() {
		
		return "/user/service";
	}
	
	//Login & Logout
	@GetMapping("/login")
	public ModelAndView getLogin(@ModelAttribute("login")LoginCommand loginCommand,
						   @CookieValue(value="REMEMBER", required = false)Cookie rememberCookie)throws Exception {
		
		if(rememberCookie != null) {
			loginCommand.setId(rememberCookie.getValue());
			loginCommand.setRememberId(true);
		}
		
		ModelAndView mv = new ModelAndView("/user/login");
		return mv;
		
	}
		
	@PostMapping("/loginProc")
	public ModelAndView loginProc(@Valid @ModelAttribute("login")LoginCommand loginCommand, BindingResult result,
								  HttpSession session, HttpServletResponse response)throws Exception {
		
		if(result.hasErrors()) {
			ModelAndView mv = new ModelAndView("/user/login");
			return mv;
		}
		
		try {
			
			UserInfo user = uservice.loginAuth(loginCommand);
			session.setAttribute("user", user);
			
			Cookie rememberCookie = new Cookie("Remember", loginCommand.getId());
			rememberCookie.setPath("/");
			if(loginCommand.isRememberId()) {
				rememberCookie.setMaxAge(60*60*24*7);
			}else {
				rememberCookie.setMaxAge(0);
			}
			response.addCookie(rememberCookie);
			
		}catch(IdPasswordNotMatchingException e) {
			result.rejectValue("pw", "notMatch", "아이디와 비밀번호가 맞지 않습니다.");
			ModelAndView mv = new ModelAndView("/user/login");
			return mv;		
		}
		ModelAndView mv = new ModelAndView("/user/loginSuccess");
		return mv;
		
	}
	
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mv = new ModelAndView("redirect:/main/main");
		
		return mv;
	}
	 
	//MainPage
	@GetMapping("/main")
	public void main(HttpSession session, Model m) {
		List<BVO> toplist= bservice.topList();
		List<EVO> randomlist=dataservice.randomList();
		m.addAttribute("toplist",toplist);
		m.addAttribute("randomlist",randomlist);
	}
	
	
	//MyPage
	@GetMapping("/myPage")  
	public String myPage(HttpSession session) {
		UserInfo user=(UserInfo)session.getAttribute("user");
		if(user.getU_id().equals("admin")) {
			return "/admin/chart";
		}
		return "/user/myPage";		  
	} 
	
	

	@ResponseBody
	@RequestMapping("/bmichart") 
	public JSONObject bmichart() { 
		UVO tmp=new UVO(); 
		return uservice.getDiscord(tmp);		 
	}
	
	@GetMapping("/infoUpdate")
	public void infoUpdate() {
		
	}
	
	@PostMapping("/infoUpdate")
	public String postInfoUpdate(@ModelAttribute("user") UVO uvo, BindingResult result) {
		//정보 업데이트
		if(result.hasErrors()) {
			System.out.println(result.getAllErrors());
			return "/user/infoUpdate";
		}
		uservice.modify(uvo);
		return "/user/infoUpdateSuccess";
	}
	
	@GetMapping("/whUpdate")
	public void whUpdate() {
		
	}
	
	@PostMapping("/whUpdate")
	public String postwhUpdate() {
		
		return "/user/myPage";
	}
}
