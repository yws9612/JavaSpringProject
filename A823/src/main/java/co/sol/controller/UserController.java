package co.sol.controller;



import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import co.sol.main.*;
import co.sol.service.UService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor 
@Log4j
@RequestMapping({"/user/*","/main/*"})
public class UserController {
	
	private final UService service;
	
	
	@GetMapping("/myPage") 
	public void myPage() { 
		 
	}
	
	
	@ResponseBody
	@RequestMapping("/bmichart")
	public JSONObject bmichart() {
		UVO tmp=new UVO();
		return service.getDiscord(tmp);		
	}

}
