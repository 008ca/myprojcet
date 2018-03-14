package com.intermediary.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Customer entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "customer", catalog = "imtermediary")
public class Customer implements java.io.Serializable {

	// Fields

	private Integer customerid;
	private String name;
	private String customeradress;
	private String customercontact;
	private String password;
	private String customerphoto;
	private String identification;
	private Integer if_;
	private Set<Customerorder> customerorders = new HashSet<Customerorder>(0);

	// Constructors

	/** default constructor */
	public Customer() {
	}

	/** full constructor */
	public Customer(String name, String customeradress, String customercontact,
			String password, String customerphoto, String identification,
			Integer if_, Set<Customerorder> customerorders) {
		this.name = name;
		this.customeradress = customeradress;
		this.customercontact = customercontact;
		this.password = password;
		this.customerphoto = customerphoto;
		this.identification = identification;
		this.if_ = if_;
		this.customerorders = customerorders;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "customerid", unique = true, nullable = false)
	public Integer getCustomerid() {
		return this.customerid;
	}

	public void setCustomerid(Integer customerid) {
		this.customerid = customerid;
	}

	@Column(name = "name", length = 30)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "customeradress", length = 30)
	public String getCustomeradress() {
		return this.customeradress;
	}

	public void setCustomeradress(String customeradress) {
		this.customeradress = customeradress;
	}

	@Column(name = "customercontact", length = 30)
	public String getCustomercontact() {
		return this.customercontact;
	}

	public void setCustomercontact(String customercontact) {
		this.customercontact = customercontact;
	}

	@Column(name = "password", length = 30)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "customerphoto", length = 100)
	public String getCustomerphoto() {
		return this.customerphoto;
	}

	public void setCustomerphoto(String customerphoto) {
		this.customerphoto = customerphoto;
	}

	@Column(name = "Identification", length = 18)
	public String getIdentification() {
		return this.identification;
	}

	public void setIdentification(String identification) {
		this.identification = identification;
	}

	@Column(name = "if")
	public Integer getIf_() {
		return this.if_;
	}

	public void setIf_(Integer if_) {
		this.if_ = if_;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "customer")
	public Set<Customerorder> getCustomerorders() {
		return this.customerorders;
	}

	public void setCustomerorders(Set<Customerorder> customerorders) {
		this.customerorders = customerorders;
	}

}