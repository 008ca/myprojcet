package com.intermediary.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.hibernate.annotations.GenericGenerator;

/**
 * Customerorder entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "customerorder", catalog = "imtermediary")
public class Customerorder implements java.io.Serializable {

	// Fields

	private Integer orderid;
	private Customer customer;
	private Message message;
	private Integer jobid;
	private Integer id;
	private String time;
	private String resume;
	private Integer fid;
	private String retime;
	private Integer percentage;

	// Constructors

	/** default constructor */
	public Customerorder() {
	}

	/** full constructor */
	public Customerorder(Customer customer, Message message, Integer jobid,
			Integer id, String time, String resume, Integer fid, String retime,
			Integer percentage) {
		this.customer = customer;
		this.message = message;
		this.jobid = jobid;
		this.id = id;
		this.time = time;
		this.resume = resume;
		this.fid = fid;
		this.retime = retime;
		this.percentage = percentage;
	}

	// Property accessors
	@GenericGenerator(name = "generator", strategy = "increment")
	@Id
	@GeneratedValue(generator = "generator")
	@Column(name = "orderid", unique = true, nullable = false)
	public Integer getOrderid() {
		return this.orderid;
	}

	public void setOrderid(Integer orderid) {
		this.orderid = orderid;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "customer")
	public Customer getCustomer() {
		return this.customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "message")
	public Message getMessage() {
		return this.message;
	}

	public void setMessage(Message message) {
		this.message = message;
	}

	@Column(name = "jobid")
	public Integer getJobid() {
		return this.jobid;
	}

	public void setJobid(Integer jobid) {
		this.jobid = jobid;
	}

	@Column(name = "id")
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "time", length = 20)
	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Column(name = "resume", length = 100)
	public String getResume() {
		return this.resume;
	}

	public void setResume(String resume) {
		this.resume = resume;
	}

	@Column(name = "fid")
	public Integer getFid() {
		return this.fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
	}

	@Column(name = "retime", length = 30)
	public String getRetime() {
		return this.retime;
	}

	public void setRetime(String retime) {
		this.retime = retime;
	}

	@Column(name = "percentage")
	public Integer getPercentage() {
		return this.percentage;
	}

	public void setPercentage(Integer percentage) {
		this.percentage = percentage;
	}

}