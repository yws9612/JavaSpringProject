package co.sol.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import co.sol.main.BVO;
import co.sol.main.Basic;
import co.sol.main.PageDTO;
import co.sol.service.BService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping({"/board/*"})
public class BController {
	
	private final BService service;
	
	//BoardFolder
	@GetMapping("/list")
	public void list(Model m, Basic ba) {
		
		m.addAttribute("list", service.getPage(ba));
		m.addAttribute("pp", new PageDTO(ba, service.getTotal(ba)));

		
	}
	@GetMapping("/submit")
	public void sub() {}
	

	@PostMapping("/submit")
	public String submit(BVO bv, RedirectAttributes rt) {
		
		int bnum=service.submit(bv);
		
		rt.addFlashAttribute("result", bnum);
		
		return "redirect:/board/list";
				
	}
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("bnum") int bnum, @ModelAttribute("ba") Basic ba, Model m ) {
		m.addAttribute("board" ,service.get(bnum));
	}
	
	
	@PostMapping("/modify")
	public String modify(BVO bo, Basic ba, RedirectAttributes rt) {

		if(service.modify(bo)==1) {
			rt.addFlashAttribute("result", "����");
			
		}
		 rt.addAttribute("pageNum", ba.getPageNum());
		 rt.addAttribute("amount", ba.getAmount());
		 rt.addAttribute("type", ba.getType());
		 rt.addAttribute("keyword", ba.getKeyword());
		return "redirect:/board/list";
	}
	
	@PostMapping("/del")
	public String del(@RequestParam("bnum")int bnum, Basic ba, RedirectAttributes rt) {
		
		if(service.del(bnum)==1) {
			rt.addFlashAttribute("result","����");
		}
		
		rt.addAttribute("pageNum", ba.getPageNum());
		rt.addAttribute("amount", ba.getAmount());
		rt.addAttribute("type", ba.getType());
		 rt.addAttribute("keyword", ba.getKeyword());
		return "redirect:/board/list";
	}	
	@GetMapping("/list_writer")
	public void list_writer() {}
	
	@GetMapping("/list_writer2")
	public void list_writer2() {}
	
	@GetMapping("/exercise_diary")
	public void e_diary() {
		
	}
	
	@GetMapping("/exercise_info")
	public void e_info() {
		
	}
	
	@GetMapping("/exercise_list")
	public void e_list() {
		
	}
	
	@GetMapping("/exercise_way")
	public void e_way() {
		
	}
	
	@GetMapping("/health_location")
	public void h_location() {
		
	}
	
	@GetMapping("/health_review")
	public void h_review() {
		
	}
	
	@GetMapping("/list_writer")
	public void l_writer() {
		
	}
	
}








