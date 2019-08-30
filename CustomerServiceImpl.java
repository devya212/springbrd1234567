package com.nucleus.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.nucleus.dao.CustomerRDBMSDaoImpl;
import com.nucleus.dao.ICustomerDao;
import com.nucleus.model.Customer;
@Service
public class CustomerServiceImpl implements ICustomerService {
	ICustomerDao icdao=new CustomerRDBMSDaoImpl();
	boolean check;
	List<Customer> list;
	public boolean insert(Customer customer)
	{
		check=icdao.insert(customer);
		return check;
		
	}
	public boolean delete(String customerCode)
	{
	     check=icdao.delete(customerCode);
		return check;
	}
	public boolean update(Customer customer,String customerCode)
	{
	       check=icdao.update(customer,customerCode);
		return check;
		
	}
		
}
