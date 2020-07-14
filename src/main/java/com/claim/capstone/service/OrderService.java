package com.claim.capstone.service;

import java.util.List;

import com.claim.capstone.model.Orders;

 
public interface OrderService {
	

	Orders findOrderById(long orderId);

	List<Orders>findAll();
	
	List<Orders>findByCustomerName(String customerName);
	
	List<Orders>findByPhone(String phone);
	
	void deleteOrder(long orderId);
	
	void updateOrder (Orders order);
	
	void saveOrder(Orders order);
	
	void addOrder(Orders order);
	
	void sendEmailConfirmation(Orders order);
	
	//List<Orders> searchOrder (String keyword);
	
	

}
