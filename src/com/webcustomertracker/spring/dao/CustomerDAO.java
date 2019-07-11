package com.webcustomertracker.spring.dao;

import java.util.List;

public interface CustomerDAO<T> {
	
	public  List<T> getCustomer();

}
