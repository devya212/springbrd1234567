package com.nucleus.dao;

import com.nucleus.model.Customer;

public interface ICustomerDao {
	public boolean insert(Customer customer);
	public boolean delete(String customerCode);
	public boolean update(Customer customer,String customerCode);
	
}
