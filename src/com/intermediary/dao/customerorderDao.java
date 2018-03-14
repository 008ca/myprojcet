package com.intermediary.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.intermediary.model.Customer;
import com.intermediary.model.Customerorder;
import com.intermediary.model.Message;

@Service @Transactional
public class customerorderDao {
	@Resource SessionFactory factory;
	public void addOrder(Customerorder o)throws Exception{
		Session s=factory.getCurrentSession();
		s.save(o);
	}
	
	public ArrayList<Customerorder> queryAllOrder(){
		Session s=factory.getCurrentSession();
		String hql="From Order";
		Query q=s.createQuery(hql);
		List orderList=q.list();
		return (ArrayList<Customerorder>)  orderList;
	}
	
	public void deleteOrder(Integer orderid)throws Exception{
		   Session s=factory.getCurrentSession();
		   Object order=s.load(Customerorder.class, orderid);
		   s.delete(order);
	}	
	
	public void updateOrder(Customerorder o)throws Exception{
		   Session s=factory.getCurrentSession();
		   s.update(o);
	}
	
    public ArrayList<Customerorder> queryCustomerorderInfo(Customer Customer,Message message) {
    	
    	Session s = factory.getCurrentSession();
    	String hql = "From Order order where 1=1";
    	if(null != Customer && Customer.getCustomerid()!=0) 
    		hql = hql + " and order.customer.customerid like '%" + Customer.getCustomerid() + "%'";
    	if(null != message && null!=message.getJobname()) 
    		hql = hql + " and order.food.foodname like '%" + message.getJobname() + "%'";
    	Query q = s.createQuery(hql);
    	List CustomerorderList = q.list();
    	return (ArrayList<Customerorder>) CustomerorderList;
    }

}
