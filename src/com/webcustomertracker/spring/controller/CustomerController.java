package com.webcustomertracker.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webcustomertracker.spring.dao.CustomerDAO;
import com.webcustomertracker.spring.dao.CustomerDAOIml;
import com.webcustomertracker.spring.entity.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired
	private CustomerDAO<Customer> customerDAO;
	
	@RequestMapping("/list")
	
	public String listCustomer(Model model) {
		
		List<Customer> customers = customerDAO.getCustomer();
		
		model.addAttribute("customers" , customers);
		
		return "list_customer";
	}

}
