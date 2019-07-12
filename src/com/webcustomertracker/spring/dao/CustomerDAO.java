package com.webcustomertracker.spring.dao;

import java.util.List;

import com.webcustomertracker.spring.entity.Customer;

public interface CustomerDAO<T> {
	
	public  List<T> getCustomer();

	public void saveCustomer(Customer theCustomer);

}
