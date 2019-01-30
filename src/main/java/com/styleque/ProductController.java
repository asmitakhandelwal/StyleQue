package com.styleque;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import com.styleque.dao.ProductDAO;
import com.styleque.model.Product;
import com.styleque.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;

	@GetMapping("/allProducts")
	public String AllProducts(Model model) {
		List<Product> allProducts = productService.getAllProducts();
		model.addAttribute("allProducts", allProducts);
		return "AllProducts";
	}

	@RequestMapping(value = "/viewProduct/{productId}", method = RequestMethod.GET)
	public String viewMore(Model model, @PathVariable("productId") int productId) {
		Product product = productService.getProductbyId(productId);
		model.addAttribute("product", product);
		return "viewProduct";
	}

	}

	
	
	