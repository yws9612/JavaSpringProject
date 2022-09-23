package co.sol.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		m.addAttribute("glist", service.getList(null));
	}
	@PostMapping("/gym_list")
	public List<GVO> gym_list_local(@RequestParam("si") String si, @RequestParam("gugun") String gugun, HttpSession session) {
		String local=si+" "+gugun;
		List<GVO> li=service.getList(local);
		System.out.println(local);
		System.out.println(li);
		System.out.println(li.size());
		return li;
	}
	
	
	
	@GetMapping("/gym_detail")
	public void gymdetail(@RequestParam("g_no")int g_no, Model m, HttpSession session) {
		GVO g=service.getOneGym(g_no);
		m.addAttribute("gym", g);
		m.addAttribute("reviews", service.getReview(g_no));
		m.addAttribute("review_info", service.review_info(g_no));
	}
	
	
	
	@PostMapping("/new_review")
	public String newreview(@ModelAttribute("review")RVO review, RedirectAttributes rt) {
		service.newreview(review);
		rt.addFlashAttribute("success", true);
		return "redirect:/gym/gym_detail?g_no="+review.getG_no();
	}

}
