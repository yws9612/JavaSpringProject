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


import co.sol.main.BVO;
import co.sol.main.Basic;
import co.sol.main.CVO;
import co.sol.main.EVO;
import co.sol.main.PageDTO;
import co.sol.service.BService;
import co.sol.service.CService;
import co.sol.service.DataService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping({"/board/*"})
public class BController {
	
	private final BService service;
	private final CService cservice;
	private final DataService dataService;
	
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
	
	@GetMapping("/exercise_diary")
	public void e_diary() {
		
	}
		
	@GetMapping("/exercise_gym_way")
	public void e_gymWay() {
		
	}
	
	@GetMapping("/exercise_home_way")
	public void e_homeWay() {
		
	}
	
	@GetMapping("/exercise_honey_tip")
	public void e_honeyTip() {
		
	}
	
	@GetMapping("/exercise_routine")
	public void e_routine() {
		
	}
	
	
	@GetMapping("/writer_diary")
	public void w_diary() {
		
	}
	
	@GetMapping("/writer_free")
	public void w_free() {
		
	}
	
	@GetMapping("/writer_gym")
	public void w_gym() {
		
	}
	
	@GetMapping("/writer_home")
	public void w_home() {
		
	}
	
	@GetMapping("/writer_routine")
	public void w_routine() {
		
	}
	
	@GetMapping("/board_detail")
	public void detail(@RequestParam("bnum") int b_no, Model m, HttpSession session, CVO c) {
		BVO bvo = service.get(b_no);
		List<CVO> getList=cservice.getList(b_no);
		
		System.out.println(getList);
		m.addAttribute("bdetail", bvo);
		m.addAttribute("getList", getList);
		
	}
	
	@GetMapping("/exercise_way")
	public void exercise_way(Model m, HttpSession session, EVO e) {
		List<EVO> getEList = dataService.getEList(e);
		m.addAttribute("getEList",getEList);
	}
	
	@GetMapping("/exercise_free")
	public void e_free(Model m, HttpSession session, BVO b) {
		List<BVO> bvo = service.BList();
		List<BVO> bvodiary = service.BList_diary();
		m.addAttribute("BList", bvo);
		m.addAttribute("BListdiary", bvodiary);
	}
	
	@GetMapping("/map")
	public void map() {
		
	}
	
	
}








