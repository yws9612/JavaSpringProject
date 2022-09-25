package co.sol.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	public ModelAndView report_board(@RequestParam("b_no")int b_no, HttpSession session) {
		LVO log=new LVO();
		UserInfo ssn=(UserInfo)session.getAttribute("user");
		log.setU_no(ssn.getU_no());
		log.setB_no(b_no);
		log.setC_no(0);
		log.setR_no(0);
		
		ModelAndView mv = new ModelAndView();
		System.out.println(service.checkreport(log));
		if(service.checkreport(log)) {
			mv.setViewName("/report/reportPopup");
			mv.addObject("log", log);
			mv.addObject("report", true);
			return mv;
		}
		else {
			mv.setViewName("/report/reportPopup");
			mv.addObject("log", log);
			mv.addObject("report", false);
			return mv;
		}
	}
	@GetMapping("/report_comment")
	public ModelAndView _comment(@RequestParam("b_no")int b_no, HttpSession session, @RequestParam("c_no")int c_no, RedirectAttributes rt) {
		LVO log=new LVO();
		UserInfo ssn=(UserInfo)session.getAttribute("user");
		log.setU_no(ssn.getU_no());
		log.setB_no(b_no);
		log.setC_no(c_no);
		log.setR_no(0);

		ModelAndView mv = new ModelAndView();
		System.out.println(service.checkreport(log));
		if(service.checkreport(log)) {
			mv.setViewName("/report/reportPopup");
			mv.addObject("log", log);
			return mv;
		}
		else {
			rt.addFlashAttribute("report", false);
			mv.setViewName("/report/reportPopup");
			return mv;
		}
	}
	@GetMapping("/report_review")
	public ModelAndView report_review(@RequestParam("r_no")int r_no, HttpSession session, RedirectAttributes rt) {
		LVO log=new LVO();
		UserInfo ssn=(UserInfo)session.getAttribute("user");
		log.setU_no(ssn.getU_no());
		log.setB_no(0);
		log.setC_no(0);
		log.setR_no(r_no);

		ModelAndView mv = new ModelAndView();
		System.out.println(service.checkreport(log));
		if(service.checkreport(log)) {
			mv.setViewName("/report/reportPopup");
			mv.addObject("log", log);
			return mv;
		}
		else {
			rt.addFlashAttribute("report", false);
			mv.setViewName("/report/reportPopup");
			return mv;
		}
	}
	@PostMapping("/report")
	@ResponseBody
	public void report(@RequestParam Map<String, Object> map, HttpSession session) {
		System.out.println(map);
		UserInfo ssn=(UserInfo)session.getAttribute("user");
		
		LVO log=new LVO();
		log.setU_no(ssn.getU_no());
		log.setB_no(Integer.parseInt((String)map.get("b_no")));
		log.setC_no(Integer.parseInt((String)map.get("c_no")));
		log.setR_no(Integer.parseInt((String)map.get("r_no")));
		log.setG_no(Integer.parseInt((String)map.get("g_no")));
		log.setL_report((String)map.get("l_report"));

		service.report(log);		
		
//		String rtn;
//		if(log.getB_no()!=0) {
//			rtn="redirect:/board/board_detail?b_no="+log.getB_no();
//		}
//		else if(log.getG_no()!=0) {
//			rtn="redirect:/gym/gym_detail?g_no="+log.getG_no();
//		}
//		else {
//			rtn="redirect:/main/main";
//		}		
//		return rtn;
	}

}
