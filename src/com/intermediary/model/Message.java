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
 * Message entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "message", catalog = "imtermediary")
public class Message implements java.io.Serializable {

	// Fields

	private Integer jobid;
	private String companyname;
	private String companyaddress;
	private Integer salary;
	private Integer available;
	private String companycontact;
	private String companyphoto;
	private String jobname;
	private String demand;
	private Integer fid;
	private Set<Customerorder> customerorders = new HashSet<Customerorder>(0);

	// Constructors

	/** default constructor */
	public Message() {
	}

	/** full constructor */
	public Message(String companyname, String companyaddress, Integer salary,
			Integer available, String companycontact, String companyphoto,
			String jobname, String demand, Integer fid,
			Set<Customerorder> customerorders) {
		this.companyname = companyname;
		this.companyaddress = companyaddress;
		this.salary = salary;
		this.available = available;
		this.companycontact = companycontact;
		this.companyphoto = companyphoto;
		this.jobname = jobname;
		this.demand = demand;
		this.fid = fid;
		this.customerorders = customerorders;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "jobid", unique = true, nullable = false)
	public Integer getJobid() {
		return this.jobid;
	}

	public void setJobid(Integer jobid) {
		this.jobid = jobid;
	}

	@Column(name = "companyname", length = 30)
	public String getCompanyname() {
		return this.companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	@Column(name = "companyaddress", length = 30)
	public String getCompanyaddress() {
		return this.companyaddress;
	}

	public void setCompanyaddress(String companyaddress) {
		this.companyaddress = companyaddress;
	}

	@Column(name = "salary")
	public Integer getSalary() {
		return this.salary;
	}

	public void setSalary(Integer salary) {
		this.salary = salary;
	}

	@Column(name = "available")
	public Integer getAvailable() {
		return this.available;
	}

	public void setAvailable(Integer available) {
		this.available = available;
	}

	@Column(name = "companycontact", length = 30)
	public String getCompanycontact() {
		return this.companycontact;
	}

	public void setCompanycontact(String companycontact) {
		this.companycontact = companycontact;
	}

	@Column(name = "companyphoto", length = 100)
	public String getCompanyphoto() {
		return this.companyphoto;
	}

	public void setCompanyphoto(String companyphoto) {
		this.companyphoto = companyphoto;
	}

	@Column(name = "jobname", length = 30)
	public String getJobname() {
		return this.jobname;
	}

	public void setJobname(String jobname) {
		this.jobname = jobname;
	}

	@Column(name = "demand")
	public String getDemand() {
		return this.demand;
	}

	public void setDemand(String demand) {
		this.demand = demand;
	}

	@Column(name = "fid")
	public Integer getFid() {
		return this.fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
	}

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "message")
	public Set<Customerorder> getCustomerorders() {
		return this.customerorders;
	}

	public void setCustomerorders(Set<Customerorder> customerorders) {
		this.customerorders = customerorders;
	}

}