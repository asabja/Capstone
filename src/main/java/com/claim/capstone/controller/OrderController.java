package com.claim.capstone.controller;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.claim.capstone.model.Orders;
import com.claim.capstone.service.OrderServiceImpl;
import com.claim.capstone.utils.WebUtils;

@Controller 
public class OrderController {

	@Autowired 
	private OrderServiceImpl orderService;
	
	@Autowired
	private WebUtils utils; 
	
	

	@RequestMapping("/orderForm")
	public String addOrderForm(Map<String, Object> model) {
	    Orders order = new Orders();
	    model.put("order", order);
	    return "orderForm";
	}
	
	@RequestMapping(value="/saveOrder", method = RequestMethod.POST)
	public String saveOrder(@ModelAttribute("order") Orders order) {
		    orderService.saveOrder(order);
		    utils.sendMail(order.getCustomerEmail(),"Confirmation","Confirmation");//not sending email
		    return "redirect:/thankyou";
		}

	 

	
	
   

}
