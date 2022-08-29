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
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping({"/user/*","/main/*"})
public class UserController {
	
	
	
	@GetMapping("/findID")
	public void findID() {
		
	}
	
	@GetMapping("/findPW")
	public void findPW() {
		
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
