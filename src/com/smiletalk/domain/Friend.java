package com.smiletalk.domain;

/**
 * Friend entity. @author MyEclipse Persistence Tools
 */

public class Friend implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Integer hostId;
	private Integer type;
	private String description;

	// Constructors

	/** default constructor */
	public Friend() {
	}

	/** full constructor */
	public Friend(User user, Integer hostId, Integer type, String description) {
		this.user = user;
		this.hostId = hostId;
		this.type = type;
		this.description = description;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getHostId() {
		return this.hostId;
	}

	public void setHostId(Integer hostId) {
		this.hostId = hostId;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}