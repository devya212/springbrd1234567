package com.nucleus.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.nucleus.model.Customer;
@Repository
//insert into customer0101(customer_code,customer_name,cust_address1,cust_address2,pin,email,contactno,contact_person,record_status,flag,create_date,created_by) values(?,?,?,?,?,?,?,?,?,?,?,?)
public class CustomerRDBMSDaoImpl implements ICustomerDao  {

	@Autowired
	JdbcTemplate jdbctemplate;
	@Override
	public boolean insert(Customer customer) {
		
		Object obj[]={customer.getCustomerCode(),customer.getCustomerName(),customer.getCustomerAddress1(),customer.getCustomerAddress2(),customer.getCustomerPinCode(),customer.getEmail(),customer.getContactNo(),customer.getPrimaryContactPerson(),customer.getRecordStatus(),customer.getFlag(),new java.sql.Date(customer.getCreateDate().getTime()),customer.getCreatedBy()};
		jdbctemplate.update("insert into customer0101(customer_code,customer_name,cust_address1,cust_address2,pin,email,contactno,contact_person,record_status,flag,create_date,created_by) values(?,?,?,?,?,?,?,?,?,?,?,?)",obj);
	   return true;
	}

	@Override
	public boolean delete(String customerCode) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(Customer customer, String customerCode) {
		// TODO Auto-generated method stub
		return false;
	}

}
