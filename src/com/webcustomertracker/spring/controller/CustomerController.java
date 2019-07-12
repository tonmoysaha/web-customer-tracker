package com.webcustomertracker.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.webcustomertracker.spring.entity.Customer;
import com.webcustomertracker.spring.service.CustomerService;


@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/list")
	public String listCustomer(Model model) {
		
		List<Customer> customers = customerService.getCustomers();
		
		model.addAttribute("customers" , customers);
		
		return "list_customer";
	}
	
	@GetMapping("/AddFromShow")
	public String showAddCustomerForm(Model thModel) {
		Customer customer = new Customer();
		thModel.addAttribute("customer", customer);
		return "customer_form";
	}
	
	@PostMapping("/create_customer")
	public String saveCustomer(@ModelAttribute("customer") Customer theCustomer) {
		
		customerService.saveCustomer(theCustomer);
		return "redirect:/customer/list";
	}

}
