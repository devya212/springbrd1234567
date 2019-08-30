package com.nucleus.service;

import java.util.List;

import com.nucleus.model.Customer;

public interface ICustomerService {
	public boolean insert(Customer customer);
	public boolean delete(String customerCode);
	public boolean update(Customer customer,String customerCode);
	
}