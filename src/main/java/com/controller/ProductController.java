package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.ProductBean;
import com.dao.ProductDao;

@Controller
public class ProductController {
	
	@Autowired
	ProductDao productDao;
		@GetMapping("/newproduct")
		public String newProduct(Model model)
		{
			System.out.println("Start Signup");
			System.out.println("Controller called");
//		model.addAttribute("product",new ProductBean());
			return "NewProduct";
		}
		@PostMapping("/saveproduct")
		public String saveProduct(ProductBean product)
		{
			
			productDao.insertProduct(product);
			return "redirect:/listproduct";	
		}		
		@GetMapping("/listproduct")
		public String listProduct(Model model)
		{
			List<ProductBean> product = productDao.getAllProduct();
			model.addAttribute("product",product);
			return "ListProduct";
		}
		@GetMapping("/deleteproduct/{productId}")
		public String deleteProduct(@PathVariable("productId") int productId)
		{
				System.out.println("Deleted");
				productDao.deleteProduct(productId);
			return "redirect:/listproduct";
		}
		@GetMapping("/editproduct")
		public String editProduct(@RequestParam("productId") int productId, Model model)
		{
			ProductBean product  = productDao.getProductById(productId);
			model.addAttribute("product",product);
			return "EditProduct";
			
		}
		@PostMapping("/updateproduct")
		public String updateProduct(ProductBean product)
		{
				productDao.updateProduct(product);
				return "redirect:/listproduct";
		}
		
}