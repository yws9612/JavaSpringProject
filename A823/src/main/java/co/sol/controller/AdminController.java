package co.sol.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.sol.main.UVO;
import co.sol.service.AdminService;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/admin/*")
public class AdminController {
	
	
	private final AdminService service;
	
	@GetMapping("/chart")
	public void chart() {
		
	}

	@ResponseBody
	@RequestMapping("/chart1")
	public JSONObject chart1() {
		return service.getBoardcnt();
	}

	@ResponseBody
	@RequestMapping("/chart2")
	public JSONObject chart2() {
		return service.getUsercnt();
	}
	
	@GetMapping("/manage_member")
	public void manege_member(Model m, HttpSession session, UVO u){
		List<UVO> UList=service.getUserList();
		m.addAttribute("UList", UList);
	}

}
