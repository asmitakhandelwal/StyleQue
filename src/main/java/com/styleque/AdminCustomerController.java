package com.styleque;

import com.styleque.model.Customer;
import com.styleque.model.Product;
import com.styleque.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/admin")
public class AdminCustomerController 
{
    @Autowired
    private CustomerService customerService;

    @RequestMapping
    public String adminPage(){
        return "admin";
    }
    
    @RequestMapping("/customer")
    public String customerManagerment(Model model){

        List<Customer> customerList = customerService.getAllCustomers();
        model.addAttribute("customerList", customerList);

        return "CustomerManagement";
    }
    
    @RequestMapping(value="/UpdateCustomer/{customerId}")
	public String UpdateCustomer(Model model,@PathVariable("customerId") int customerId)
	{
		Customer customer;
		customer= customerService.getCustomerById(customerId);
		model.addAttribute("customer", customer);
		return "UpdateCustomer";
	 }
    
    @RequestMapping(value="/UpdateCustomer/{customerId}", method=RequestMethod.POST)
	public String UpdateCustomer(@ModelAttribute("customer")Customer customer,Model model, HttpServletRequest request)
	{
		customerService.UpdateCustomer(customer);
		return "redirect:/admin/customer";
	}
}