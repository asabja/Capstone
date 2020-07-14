package com.claim.capstone.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.capstone.model.Product;
import com.claim.capstone.repository.ProductRepository;

@Service
public class ProductService {
	
	@Autowired
	ProductRepository productRepository;
	
	

	public ProductService(ProductRepository productRepository) {
		super();
		this.productRepository = productRepository;
	}

	public void save(Product product) {
		productRepository.save(product);
		
	}
	
	public List<Product> findAll(){
		return(List<Product>) productRepository.findAll();
	}
	
	public Product getProduct(long id) {
		return productRepository.findById(id).get();
	}
	
	public void delete(Long id) {
		productRepository.deleteByProductId(id);
	}	

	
	public List<Product> search(String keyword) {
	    return productRepository.search(keyword);
	   
	}
	
	
	
	
}
