package co.sol.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.annotation.SessionScope;

import co.sol.main.UVO;
import co.sol.service.BService;
import co.sol.service.UService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping({"/user/*","/main/*"})
public class UserController {
	
	private final UService uservice;
	
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
	
		uservice.updatePw(uvo);
		
		return "/user/login";
	}
	
	
	@GetMapping("/join")
	public void getJoin() {
		
	}
	
	@PostMapping("/join")
	public void postJoin() {
		
	}
	
	@GetMapping("/login")
	public void getLogin() {
		
	}
	
	@PostMapping("/login")
	public void postLogin() {
				
	}
	
	@PostMapping("/loginProc")
	public String loginProc(UVO uvo, HttpSession session) {
		
		
		return "/main/main";
	}
	
	@GetMapping("/main")
	public void main() {
		
	}

}
