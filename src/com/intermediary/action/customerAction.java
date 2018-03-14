package com.intermediary.action;

import java.util.ArrayList;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.intermediary.dao.customerDao;
import com.intermediary.model.Customer;
import com.opensymphony.xwork2.ActionSupport;


@Controller @Scope("prototype")
public class customerAction extends ActionSupport implements SessionAware{
	@Resource customerDao customerDao;
	private static final long serialVersionUID = 1L;
	private Customer customer;
    private Map<String,Object> session;
    private String prePage;
    private String confirmpass;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	/*public String reg() throws Exception{
		//System.out.println(customer.getCustomerid());
		customerDao.addCustomer(customer);
		session.put("customer", customer);
		return "show_view";	
	}*/
	public String reg() throws Exception{
		ArrayList<Customer> listCustomer=customerDao.QueryCustomerInfo2(customer.getIdentification());
		if(listCustomer.size()==0){
			this.errMessage="可以注册";
			System.out.print(this.errMessage);
			String pass =this.customer.getPassword();
			if(pass.equals(this.getConfirmpass())){
				System.out.println("密码一致");
		        customerDao.addCustomer(customer);
		        session.put("customer", customer);
		        return "show_view";	}
			else{
				System.out.println("密码不一致");
				return "fail";
			}
		}
		else{
			this.errMessage="已被注册";
			System.out.print(this.errMessage);
		return "fail";
		}
	}
	
	private String errMessage;
	
	public String getErrMessage() {
		return errMessage;
	}

	public void setErrMessage(String errMessage) {
		this.errMessage = errMessage;
	}
	
	
	public String login2(){
		ArrayList<Customer> listCustomer=customerDao.QueryCustomerInfo2(customer.getIdentification());
		if(listCustomer.size()==0) { 
			this.errMessage = "空用户名";
			System.out.print(this.errMessage);
			return "input";
		}else{
			
		    Customer db_customer = listCustomer.get(0);
			if(!db_customer.getPassword().equals(customer.getPassword())) {
				this.errMessage = " 密码错误 ";
				System.out.print(this.errMessage);
				return "input";
			
		    }else{		
				session.put("customer", db_customer);
				return "show_view";
		    }
		}

	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getPrePage() {
		return prePage;
	}

	public void setPrePage(String prePage) {
		this.prePage = prePage;
	}

	public String getConfirmpass() {
		return confirmpass;
	}

	public void setConfirmpass(String confirmpass) {
		this.confirmpass = confirmpass;
	}
	public String showEdit() throws Exception {
    	customer = customerDao.getCustomerById(customer.getCustomerid());
    	System.out.println(customer.getCustomerid());
        return "customer_updatamessage";
    }
    public String editCustomer() throws Exception{
        customerDao.updateCustomer(customer);
        return "main";
    }


}