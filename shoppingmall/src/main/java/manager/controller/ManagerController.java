package manager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import manager.dao.ManagerDAO;
import manager.paging.ManagerPaging;
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
	
	@RequestMapping(value="/data_management.do")
	public String insert_data(Model model) {
		model.addAttribute("managerNav", "/manager/dataManagement/manager_dataNav.jsp");
		model.addAttribute("managerSect", "/manager/dataManagement/data_management.jsp");
		return "/manager/managerIndex";
	}
	
	@RequestMapping(value="/delete_data.do")
	public String delete_data(Model model) {
		model.addAttribute("managerNav", "/manager/dataManagement/manager_dataNav.jsp");
		model.addAttribute("managerSect", "/manager/dataManagement/dataDelete_management.jsp");
		return "/manager/managerIndex";
	}
	
	@RequestMapping(value="/user_list.do")
	public String userList(Model model) {
		model.addAttribute("managerNav", "/manager/userManagement/manager_userNav.jsp");
		model.addAttribute("managerSect", "/manager/userManagement/userList_management.jsp");
		return "/manager/managerIndex";
	}
	
	//user
	@RequestMapping(value="/getUserList.do")
	public ModelAndView userList(@RequestParam(required=false,defaultValue="1") String pg) {		
		ModelAndView mav = new ModelAndView();
		List<UserDTO> list = managerDAO.getUserList();
		
		int totalUser = managerDAO.getTotalUser();
		ManagerPaging userPaging = new ManagerPaging();
		userPaging.setCurrentPage(Integer.parseInt(pg));
		userPaging.setPageBlock(10);
		userPaging.setPageSize(5);
		userPaging.setTotalA(totalUser);
		userPaging.makePagingHTML();
		
		mav.addObject("userPaging", userPaging);
		mav.addObject("list", list);
		mav.setViewName("jsonView");
		return mav;
	}
	
	@RequestMapping(value="/user_Withdrawal.do")
	public String userWithdrawal(Model model) {
		model.addAttribute("managerNav", "/manager/userManagement/manager_userNav.jsp");
		model.addAttribute("managerSect", "/manager/userManagement/userWithdrawal_management.jsp");
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
