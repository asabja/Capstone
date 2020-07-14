package com.claim.capstone.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.claim.capstone.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long>{
	
	
	List<Product>findAll();
	
	@Query("FROM Product WHERE id=?1")
	Product findByProductId(long id);
	
	@Query("FROM Product WHERE category=?1")
	List<Product>findByCategory(String category);
	
	@Query("FROM Product WHERE name=?1")
	List<Product>findByProductName(String productName);
	
	@Query("FROM Product WHERE price=?1")
	List<Product>findByPrice(double price);
	
	@Query("FROM Product WHERE id=?1")
	Product deleteByProductId(Long id);
	
	 @Query("SELECT p FROM Product p WHERE p.productName LIKE %:keyword% "+
			 "or p.category  LIKE %:keyword%")
    List<Product> search(@Param("keyword") String keyword);
}


