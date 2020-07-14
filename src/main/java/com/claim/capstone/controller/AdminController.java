package com.claim.capstone.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.claim.capstone.model.Orders;
import com.claim.capstone.service.OrderServiceImpl;

@Controller
public class AdminController {
	
	@Autowired
	private OrderServiceImpl orderService;
	
	
	
	@GetMapping("order")
	public String getAllOrders(Model model) {
		List<Orders> getOrderList = orderService.findAll();
		model.addAttribute("orders", getOrderList);
		return "Orders"; 
		
	}
	
	@RequestMapping("/orderTable")
    public ModelAndView inventory() {
        List<Orders> findOrder = orderService.findAll();
        ModelAndView mod = new ModelAndView("orderTable");
        mod.addObject("findOrder", findOrder);
        return mod ;
	}
	
	@RequestMapping("/admin_order")
	public String addOrderForm(Map<String, Object> model) {
	    Orders adminOrder = new Orders();
	    model.put("adminOrder", adminOrder);
	    return "admin_order";
	}
	
	 @RequestMapping(value="/save", method = RequestMethod.POST)
		public String saveOrder(@ModelAttribute("order") Orders adminOrder) {
			    orderService.saveOrder(adminOrder);
			    return "redirect:/orderTable";
			}
	    
	    @RequestMapping("/remove")
		public String deleteProduct(@RequestParam long orderId) {
		    orderService.deleteOrder(orderId);
		    return "redirect:/orderTable";       
		}
	    
	    @RequestMapping("/updateOrder")
		public ModelAndView updateOrder(@RequestParam long orderId) {
		    ModelAndView model = new ModelAndView("edit_order");
		    Orders editOrder = orderService.findOrderById(orderId);
		    model.addObject("editOrder", editOrder);
		    return model;
		}
	  
	/*
	 * @RequestMapping("/searchOrder") public ModelAndView searchOrder(@RequestParam
	 * String keyword) { List<Orders> result = orderService.searchOrder(keyword);
	 * ModelAndView mod = new ModelAndView("searchOrder"); mod.addObject("result",
	 * result); return mod; }
	 */
	  
		
	

}
