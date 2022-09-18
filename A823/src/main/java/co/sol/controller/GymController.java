package co.sol.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import co.sol.main.GVO;
import co.sol.main.RVO;
import co.sol.service.GymService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping({"/gym/*"})
public class GymController {
	
	private final GymService service;
	
	@GetMapping("/gym_list")
	public void gym_list(Model m, HttpSession session) {
		String empty=null;
		m.addAttribute("glist", service.getList(empty));		
	}
	
	@GetMapping("/gym_detail")
	public void gymdetail(@RequestParam("g_no")int g_no, Model m, HttpSession session) {
		GVO g=service.getOneGym(g_no);
		m.addAttribute("gym", g);
		m.addAttribute("reviews", service.getReview(g_no));
	}

}
