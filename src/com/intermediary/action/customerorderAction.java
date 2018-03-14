package com.intermediary.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;


import com.intermediary.model.Customer;
import com.intermediary.model.Message;
import com.intermediary.model.Customerorder;
import com.intermediary.dao.customerDao;
import com.intermediary.dao.messageDao;
import com.intermediary.dao.customerorderDao;
import com.intermediary.model.Customerorder;
import com.intermediary.model.Message;
import com.opensymphony.xwork2.ActionSupport;
@Controller @Scope("prototype")
public class customerorderAction extends ActionSupport {
	@Resource customerorderDao customerorderDao;
	@Resource customerDao    customerDao;
	@Resource messageDao    messageDao;
	private Customerorder customerorder;
	private Message message;
	private List<Customerorder> CustomerorderList;
    private Customer customer;
	
	public String wantOrder() throws Exception{
		customer = customerDao.QueryCustomerInfo(customer.getName()).get(0);
		Customerorder ord =new Customerorder();
		ord.setCustomer(customer);
		ord.setMessage(message);
		customerorderDao.addOrder(customerorder);
		return "success2";
	}
	
public String showOrder() {
    	
    	System.out.println(customer.getName());
        Customer cus= customerDao.QueryCustomerInfo(customer.getName()).get(0);
        //注意不需要food的查询条件时，下面语句的写法，直接将food的条件置为null
        CustomerorderList = customerorderDao.queryCustomerorderInfo(cus,null);

        return "show_view";
    }
	public String editOrder(){
		ArrayList<Customerorder> customerorderList=customerorderDao.queryCustomerorderInfo(customer, message);
		if(customerorderList.size()==0){	
			customerorder = null;
		}else{
		    customerorder = customerorderList.get(0);
		}
		return "ed";
	}
	public String deleteyourorder() throws Exception{
		customerorderDao.deleteOrder(message.getJobid());
		return "success2";
	}

	public Customerorder getCustomerorder() {
		return customerorder;
	}

	public void setCustomerorder(Customerorder customerorder) {
		this.customerorder = customerorder;
	}

	
}
