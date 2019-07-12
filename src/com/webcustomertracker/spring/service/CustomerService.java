package com.webcustomertracker.spring.service;

import java.util.List;

import com.webcustomertracker.spring.entity.Customer;


public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int customerId);

	public void deleteCustomer(int customerId);
}
