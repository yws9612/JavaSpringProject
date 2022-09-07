package co.sol.controller;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.sol.service.AdminService;
import lombok.RequiredArgsConstructor;

@RequestMapping("/admin/*")
@RequiredArgsConstructor
@Controller
public class AdminController {
	
	
	private final AdminService service;
	
	@GetMapping("/chart")
	public void chart() {
		
	}

	@ResponseBody
	@RequestMapping("/chart1")
	public List<Map<String, Integer>> chart1() {		
		return service.getBoardcnt();
	}

}
