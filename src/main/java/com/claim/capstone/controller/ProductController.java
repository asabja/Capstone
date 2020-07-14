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
import com.claim.capstone.model.Product;
import com.claim.capstone.repository.ProductRepository;
import com.claim.capstone.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ProductRepository productRepository;
	
	@GetMapping("product")
	public String getAllProducts(Model model) {
		List<Product> getProductList = productService.findAll();
		model.addAttribute("product", getProductList);
		return "product"; 
	}
			
	@GetMapping("/productInventory")
    public ModelAndView inventory() {
        List<Product> findProduct = productService.findAll();
        ModelAndView mod = new ModelAndView("productInventory");
        mod.addObject("findProduct", findProduct);
        return mod ;
	}
	
	@RequestMapping("/add_product")
	public String addProductForm(Map<String, Object> model) {
	    Product product = new Product();
	    model.put("product", product);
	    return "add_product";
	}
		
	@RequestMapping(value = "/new", method = RequestMethod.POST)
		public String saveProduct(@ModelAttribute("product") Product product) {
		    productService.save(product);
		    return "redirect:/productInventory";
		}
	
	@RequestMapping("/edit")
	public ModelAndView editProduct(@RequestParam long id) {
	    ModelAndView model = new ModelAndView("edit_product");
	    Product product = productService.getProduct(id); 
	    model.addObject("product", product);
	    return model;
	}
		
	@RequestMapping("/delete" )
	public String deleteProduct(@RequestParam long id) {
	    productRepository.deleteById(id);
	    return "redirect:/productInventory";       
	}
	
	@RequestMapping("/search")
	public ModelAndView search(@RequestParam String keyword) {
	    List<Product> result = productService.search(keyword);
	    ModelAndView model = new ModelAndView("search");
	    model.addObject("result", result); 
	    return model;    
	}

}
