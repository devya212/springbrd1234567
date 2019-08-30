package com.nucleus.controller;

import java.util.Date;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

//import com.nucleus.model.Customer;
//import com.nucleus.dao.ICustomerDao;
import com.nucleus.model.Customer;
import com.nucleus.service.ICustomerService;
//import com.nucleus.utility.PasswordEncode;
@Controller
public class CustomerController {

	@Autowired
	ICustomerService customerService;
	//@Autowired
	//PasswordEncode passwordencode;
	Date dateobj = new Date();
	
	@RequestMapping("/RegisterCustomer")	
	public ModelAndView request1(@ModelAttribute("customer2") Customer customer2)
	{
		//customer.setCustname("aaaa");
		return new ModelAndView("add");
	}
	@RequestMapping("/DeleteCustomer")	
	public ModelAndView request5(@ModelAttribute("customer2") Customer customer2)
	{
		//customer.setCustname("aaaa");
		return new ModelAndView("delete");
	}
	@RequestMapping("/UpdateCustomer")	
	public ModelAndView request6(@ModelAttribute("customer2") Customer customer2)
	{
		//customer.setCustname("aaaa");
		return new ModelAndView("updateform");
	}
	
	
	@RequestMapping("/saveCustomer")
	public ModelAndView request2(@ModelAttribute("customer2") @Valid Customer customer, BindingResult result)
	{
		if(result.hasErrors())
		{
			return new ModelAndView("add");
		}
        customer.setCreateDate(dateobj);
        //customer.setCreatedBy();
		customerService.insert(customer);
		return new ModelAndView("result","cust",customer);
	}
	
	
	
	@RequestMapping("/deleteCustomer")
	public ModelAndView request3(@ModelAttribute("customer2") @Valid Customer customer, BindingResult result)
	{
		if(result.hasErrors())
		{
			return new ModelAndView("deleteform");
		}
		
		//customerService.delete(customerCode)
		return new ModelAndView("result","cust",customer);
	}
	@RequestMapping("/updateCustomer")
	public ModelAndView request4(@ModelAttribute("customer2") @Valid Customer customer, BindingResult result)
	{
		if(result.hasErrors())
		{
			return new ModelAndView("updateform");
		}
		//customerService.update(customer);
		return new ModelAndView("result","cust",customer);
	}

}
