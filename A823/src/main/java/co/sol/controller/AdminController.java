package co.sol.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@ResponseBody
@RequestMapping("/admin/*")
@RequiredArgsConstructor
@Controller
public class AdminController {
	
	public JSONObject char1() {
		
	}

}
