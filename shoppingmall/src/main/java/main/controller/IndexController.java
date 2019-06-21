package main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {
	@RequestMapping(value="/main/index.do", method=RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mav = new ModelAndView();	
		mav.addObject("title", "홈");
		mav.addObject("display", "/template/body.jsp");
		mav.setViewName("/main/index");
		return mav;
	}
}
