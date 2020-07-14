package com.claim.capstone.model;

import javax.persistence.*;

@Entity
@Table (name="orders")
public class Orders {

	public Orders() {
		
	}
	
	@Id 
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column (name="order_id")
	private long orderId;
	
	@Column(name="product")
	private String product;
	
	
	@Column(name="customer_name")
	private String customerName;
	
	@Column(name="phone") 
	private String phone;
	
	@Column(name="customer_email")
	private String customerEmail;
	
	@Column(name="quantity")
	private int quantity; 
	
	@Column(name="notes")
	private String notes;
	
	@Column(name="pickup_date")
	private String pickupDate;
	
	
	public Orders(long orderId, String product, String customerName, String phone, String customerEmail, int quantity,
			String notes, String pickupDate) {
		super();
		this.orderId = orderId;
		this.product = product;
		this.customerName = customerName;
		this.phone = phone;
		this.customerEmail = customerEmail;
		this.quantity = quantity;
		this.notes = notes;
		this.pickupDate = pickupDate;
	}


	public long getOrderId() {
		return orderId;
	}


	public void setOrderId(long orderId) {
		this.orderId = orderId;
	}


	public String getNotes() {
		return notes;
	}


	public void setNotes(String notes) {
		this.notes = notes;
	}


	
	public String getPickupDate() {
		return pickupDate;
	}


	public void setPickupDate(String pickupDate) {
		this.pickupDate = pickupDate;
	}


	public String getProduct() {
		return product;
	}


	public void setProduct(String product) {
		this.product = product;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public String getCustomerName() {
		return customerName;
	}


	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getCustomerEmail() {
		return customerEmail;
	}


	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}


	
}
