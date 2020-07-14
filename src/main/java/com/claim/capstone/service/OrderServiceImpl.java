package com.claim.capstone.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.capstone.model.Orders;
import com.claim.capstone.repository.OrderRepository;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired 
	private OrderRepository orderRepository;
	
	public OrderServiceImpl(OrderRepository orderRepository) {
		super();
		this.orderRepository = orderRepository;
	}


	public Orders findOrderById(long orderId) {
		
		return orderRepository.findByOrderId(orderId);
	}

	
	public List<Orders> findAll() {
		
		return orderRepository.findAll();
	}

	
	public void deleteOrder(long orderId) {
		orderRepository.deleteById(orderId);
		
	}

	public void updateOrder(Orders order) {
		orderRepository.findById(order.getOrderId()).ifPresent(o->{
			o.setNotes(order.getNotes());
			o.setPickupDate(order.getPickupDate());
			
		}
	);
				
	}

	public void saveOrder(Orders order) {
		orderRepository.save(order);
		
	}

	public void addOrder(Orders order) {
		
			
		order.setNotes(order.getNotes());
		order.setPickupDate(order.getPickupDate());
	}
	

	public List<Orders> findByCustomerName(String customerName) {
	
		return orderRepository.findByCustomerName(customerName);
	}


	public List<Orders> findByPhone(String phone) {
	
		return orderRepository.findByPhone(phone);
	}
	

	public void sendEmailConfirmation(Orders order) {
		order.getCustomerEmail();
		
	}



	/*
	 * public List<Orders> searchOrder(String keyword ) {
	 * 
	 * return orderRepository.searchOrder(keyword); }
	 */
	
	
}