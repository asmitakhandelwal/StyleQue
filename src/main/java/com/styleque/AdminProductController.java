package com.styleque;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.styleque.service.ProductService;
import com.styleque.model.Product;

@Controller
@RequestMapping("/admin")
public class AdminProductController {
	
	private Path path;

    @Autowired
    private ProductService productService;
    
    
	@RequestMapping(value = "/deleteProduct/{productId}", method = RequestMethod.GET)
	public String deleteProduct(Model model, @PathVariable("productId") int productId, HttpServletRequest request) {
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + productId + ".png");

        if(Files.exists(path)){
            try {
                Files.delete(path);
            } catch (Exception ex){
                ex.printStackTrace();
            }
		Product product = productService.getProductbyId(productId);
		productService.deleteProduct(product);
		}
		return "redirect:/allProducts";
	}
	
	@RequestMapping(value="/AddProduct")
	public String addProduct(Model model)
	{
		Product product=new Product();
		model.addAttribute("product", product);
		return "AddProduct";
	}
	
	@RequestMapping(value="/AddProduct", method=RequestMethod.POST)
	public String addProduct(@ModelAttribute("product")Product product,Model model, HttpServletRequest request)
	{
		productService.addProduct(product);
		 MultipartFile productImage = product.getProductImage();
	        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
	        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + product.getProductId() + ".png");
            System.out.println("Path= "+path);
	        if(productImage != null && !productImage.isEmpty())
	        {
	            try {
	                productImage.transferTo(new File(path.toString()));
	            } 
	            catch (Exception ex){
	                ex.printStackTrace();
	                throw new RuntimeException("Product image saving failed", ex);
	            }
	        }

		return "redirect:/allProducts";
	}
	
	@RequestMapping(value="/updateProduct/{productId}")
	public String updateProduct(Model model,@PathVariable("productId") int productId)
	{
		Product product;
		product=productService.getProductbyId(productId);
		model.addAttribute("product", product);
		return "updateProduct";
	}
	
	@RequestMapping(value="/updateProduct/{productId}", method=RequestMethod.POST)
	public String updateProduct(@ModelAttribute("product")Product product,Model model, HttpServletRequest request)
	{
		productService.updateProduct(product);
		 MultipartFile productImage = product.getProductImage();
	        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
	        path = Paths.get(rootDirectory + "/WEB-INF/resources/images/" + product.getProductId() + ".png");
         System.out.println("Path= "+path);
	        if(productImage != null && !productImage.isEmpty())
	        {
	            try {
	                productImage.transferTo(new File(path.toString()));
	            } 
	            catch (Exception ex){
	                ex.printStackTrace();
	                throw new RuntimeException("Product image saving failed", ex);
	            }
	        }
		return "redirect:/allProducts";
	}

	}

