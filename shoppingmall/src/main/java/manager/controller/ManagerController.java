package manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import manager.dao.ManagerDAO;
import user.bean.UserDTO;

@Controller
@RequestMapping(value="/manager")
public class ManagerController {
	
	
	@Autowired
	private ManagerDAO managerDAO;
	
	
	@RequestMapping(value="/managerIndex.do")
	public String managerIndex() {	
		return "/manager/managerIndex";
	}
	
	
	//user
	@RequestMapping(value="/getUserList.do")
	public ModelAndView userList() {		
		ModelAndView mav = new ModelAndView();
		List<UserDTO> list = managerDAO.getUserList();
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="/userWithdrawal.do")
	public String userWithdrawal(Model model) {
		model.addAttribute("managerSect", "/manager/userManagement/userWithdrawal.jsp");
		return "/manager/managerIndex";
	}
	
	
	//sales
	@RequestMapping(value="/sales_management.do")
	public String daily_sales(Model model) {
		model.addAttribute("managerNav", "/manager/salesManagement/manager_salesNav.jsp");
		model.addAttribute("managerSect", "/manager/salesManagement/sales_management.jsp");
		return "/manager/managerIndex";
	}
	
	@RequestMapping(value="/total_sales.do")
	public ModelAndView total_sales(Model model) {
		return new ModelAndView("redirect:/manager/return_management.do");
	}
	
	//order
	@RequestMapping(value="order_management.do")
	public String order_management(Model model) {
		model.addAttribute("managerNav", "/manager/orderManagement/manager_orderNav.jsp");
		model.addAttribute("managerSect", "/manager/orderManagement/order_list.jsp");
		return "/manager/managerIndex";
	}
	
	@RequestMapping(value="order_list.do")
	public ModelAndView order_list(Model model) {
		return new ModelAndView("redirect:/manager/order_management.do");
	}
	
	//return
	@RequestMapping(value="return_management.do")
	public String return_management(Model model) {
		model.addAttribute("managerNav", "/manager/returnManagement/manager_returnNav.jsp");
		model.addAttribute("managerSect", "/manager/returnManagement/return_list.jsp");
		return "/manager/managerIndex";
	}
	
	@RequestMapping(value="return_list.do")
	public ModelAndView return_list(Model model) {
		return new ModelAndView("redirect:/manager/return_management.do");
	}
	
	@RequestMapping(value="cancel_list.do")
	public String cancel_list(Model model) {
		model.addAttribute("managerNav", "/manager/returnManagement/manager_returnNav.jsp");
		model.addAttribute("managerSect", "/manager/returnManagement/cancel_list.jsp");
		return "/manager/managerIndex";
	}
	
}
