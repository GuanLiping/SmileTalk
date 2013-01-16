package com.smiletalk.domain;

/**
 * UserNet entity. @author MyEclipse Persistence Tools
 */

public class UserNet implements java.io.Serializable {

	// Fields

	private Integer userNetId;
	private User user;
	private String name;
	private Short isPrimary;

	// Constructors

	/** default constructor */
	public UserNet() {
	}

	/** minimal constructor */
	public UserNet(User user, String name) {
		this.user = user;
		this.name = name;
	}

	/** full constructor */
	public UserNet(User user, String name, Short isPrimary) {
		this.user = user;
		this.name = name;
		this.isPrimary = isPrimary;
	}

	// Property accessors

	public Integer getUserNetId() {
		return this.userNetId;
	}

	public void setUserNetId(Integer userNetId) {
		this.userNetId = userNetId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Short getIsPrimary() {
		return this.isPrimary;
	}

	public void setIsPrimary(Short isPrimary) {
		this.isPrimary = isPrimary;
	}

}