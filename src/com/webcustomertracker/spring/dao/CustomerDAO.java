package com.webcustomertracker.spring.dao;

import java.util.List;

import com.webcustomertracker.spring.entity.Customer;

public interface CustomerDAO<T> {
	
	public  List<T> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int customerId);

	public void deleteCustomer(int customerId);

}
