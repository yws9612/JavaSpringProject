package co.sol.controller;

import java.util.List;
import java.util.Map;

import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		System.out.println("chart1c");
		return service.getBoardcnt();
	}

	@ResponseBody
	@RequestMapping("/chart2")
	public JSONObject chart2() {
		System.out.println("chart2c");
		return service.getUsercnt();
	}

}