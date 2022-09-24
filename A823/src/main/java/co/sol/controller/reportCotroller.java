package co.sol.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.sol.main.LVO;
import co.sol.main.UserInfo;
import co.sol.service.LogService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequiredArgsConstructor
@Log4j
@RequestMapping({"/report/*"})
public class reportCotroller {
	
	private final LogService service;
	
	@GetMapping("/report_board")
	public ModelAndView report_board(@RequestParam("b_no")int b_no) {
		LVO log=new LVO();
		log.setB_no(b_no);
		log.setC_no(0);
		log.setR_no(0);
		log.setG_no(0);
		System.out.println(log.getB_no()+"|"+log.getC_no()+"|"+log.getR_no()+"|"+log.getG_no());
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/reportPopup");
		mv.addObject("log", log);
		return mv;
	}
	@GetMapping("/report_comment")
	public ModelAndView _comment(@RequestParam("b_no")int b_no, @RequestParam("c_no")int c_no) {
		LVO log=new LVO();
		log.setB_no(b_no);
		log.setC_no(c_no);
		log.setR_no(0);
		log.setG_no(0);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/reportPopup");
		mv.addObject("log", log);
		return mv;
	}
	@GetMapping("/report_review")
	public ModelAndView report_review(@RequestParam("r_no")int r_no, @RequestParam("g_no")int g_no) {
		LVO log=new LVO();
		log.setB_no(0);
		log.setC_no(0);
		log.setR_no(r_no);
		log.setG_no(g_no);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/board/reportPopup");
		mv.addObject("log", log);
		return mv;
	}
	@PostMapping("/report")
	public String report(@ModelAttribute("log") LVO log, HttpSession session, RedirectAttributes rt) {
		System.out.println(log.getB_no()+"|"+log.getC_no()+"|"+log.getR_no()+"|"+log.getG_no());
		
		UserInfo ssn=(UserInfo)session.getAttribute("user");
		log.setU_no(ssn.getU_no());	
		
		if(service.checkreport(log)) {
			service.report(log);
			rt.addFlashAttribute("report", true);
		}
		else {
			rt.addFlashAttribute("report", false);
		}
		
		
		String rtn;
		if(log.getB_no()!=0) {
			rtn="/board/board_detail?b_no="+log.getB_no();
		}
		else if(log.getG_no()!=0) {
			rtn="/gym/gym_detail?g_no="+log.getG_no();
		}
		else {
			rtn="/main/main";
		}		
		return rtn;
	}

}
