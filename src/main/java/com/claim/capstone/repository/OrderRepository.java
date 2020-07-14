package com.claim.capstone.repository;

import java.util.List;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.claim.capstone.model.Orders;

@Repository
public interface OrderRepository extends JpaRepository<Orders, Long> {
	
    List<Orders>findAll();
	
	@Query("FROM Orders WHERE order_id=?1")
	Orders findByOrderId(long orderId);
	
	@Query("FROM Orders WHERE customer_name=?1")
	List<Orders>findByCustomerName(String customerName);
	
	@Query("FROM Orders WHERE customer_email=?1")
	Orders findByCustomerEmail(Orders customerEmail);
	
	@Query("FROM Orders WHERE phone=?1")
	List<Orders>findByPhone(String phone);
	 
	//@Query("SELECT o FROM Orders o WHERE o.customerEmail LIKE %:keyword % ") 
    //List<Orders> searchOrder(@Param("keyword") String keyword);
	
	
	
	

}
