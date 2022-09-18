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
import org.springframework.web.servlet.ModelAndView;
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
	
	
	
	
//	@GetMapping("/submit")
//	public void sub() {		
//	}
//	@PostMapping("/submit")
//	public String submit(BVO bv, RedirectAttributes rt) {		
//		int b_no=service.submit(bv);		
//		rt.addFlashAttribute("result", b_no);
//		return "redirect:/board/list";		
//	}
	
	
	
	
	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("b_no") int b_no, @ModelAttribute("ba") Basic ba, Model m ) {
		m.addAttribute("board" ,service.get(b_no));
	}	
	@PostMapping("/modify")
	public String modify(BVO bo, Basic ba, RedirectAttributes rt) {
//		if(service.modify(bo)==1) {
//			rt.addFlashAttribute("result", "success");
//		}
//		 rt.addAttribute("pageNum", ba.getPageNum());
//		 rt.addAttribute("amount", ba.getAmount());
//		 rt.addAttribute("type", ba.getType());
//		 rt.addAttribute("keyword", ba.getKeyword());
		int tmp=service.modify(bo);
		if(bo.getB_div().equals("일지")) {
			return "redirect:/board/exercise_diary";
		}		
		return "redirect:/board/exercise_free";
	}
	
	
	
	@GetMapping("/delete")
	public String delete(@RequestParam("b_no")int b_no, @RequestParam("b_div")String b_div) {
		int tmp=service.del(b_no);
		if(b_div.equals("일지")) {
			return "redirect:/board/exercise_diary";
		}		
		return "redirect:/board/exercise_free";
	}
//	@PostMapping("/del")
//	public String del(@RequestParam("b_no")int b_no, Basic ba, RedirectAttributes rt) {
//		if(service.del(b_no)==1) {
//			rt.addFlashAttribute("result","success");
//		}
//		rt.addAttribute("pageNum", ba.getPageNum());
//		rt.addAttribute("amount", ba.getAmount());
//		rt.addAttribute("type", ba.getType());
//		rt.addAttribute("keyword", ba.getKeyword());
//		if(bo.getB_div().equals("일지")) {
//			return "redirect:/board/exercise_diary";
//		}		
//		return "redirect:/board/exercise_free";
//	}	
	
	
	
	
	@GetMapping("/exercise_diary")
	public void e_diary(Model m, HttpSession session, BVO b) {
		List<BVO> bvodiary = service.BList_diary();
		m.addAttribute("BListdiary", bvodiary);		
	}	
	@GetMapping("/exercise_free")
	public void e_free(Model m, HttpSession session, BVO b) {
		List<BVO> bvo = service.BList();
		m.addAttribute("BList", bvo);
	}
	
	
	
	
	@GetMapping("/writer_diary")
	public void w_diary() {
		
	}	
	@GetMapping("/writer_free")
	public void w_free() {
		
	}	
	@PostMapping("/new_board")
	public String new_diary(@ModelAttribute("board") BVO board) {
		int bno=service.submit(board);
		if(board.getB_div().equals("일지")) {
			return "redirect:/board/exercise_diary";
		}		
		return "redirect:/board/exercise_free";
	}
	
	
	
	
	@GetMapping("/board_detail")
	public void detail(@RequestParam("b_no") int b_no, Model m, HttpSession session, CVO c) {
		BVO bvo = service.get(b_no);
		List<CVO> getList=cservice.getList(b_no);
		
		System.out.println(getList);
		m.addAttribute("bdetail", bvo);
		m.addAttribute("getList", getList);
		m.addAttribute("b_no", b_no);		
	}
	
	
	
	
	@PostMapping("/c_insert")
	public ModelAndView c_insert(@ModelAttribute("CVO") CVO comment, @RequestParam("b_no") int b_no,
			HttpSession session) {
		try {
			System.out.println(comment.getB_no());
			System.out.println(comment.getC_no());
			System.out.println(comment.getC_con());
			System.out.println(comment.getC_writer());
			cservice.insert_comment(comment);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ModelAndView mv = new ModelAndView("redirect:/board/board_detail?b_no=" + b_no);
		return mv;
	}
	
	
	
	
	@GetMapping("/exercise_way")
	public void exercise_way(Model m, HttpSession session, EVO e) {
		List<EVO> getEList = dataService.getEList(e);
		m.addAttribute("getEList",getEList);
	}
	
	
	

	

	
	
}








