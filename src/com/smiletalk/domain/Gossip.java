package com.smiletalk.domain;

import java.util.Date;

/**
 * Gossip entity. @author MyEclipse Persistence Tools
 */

public class Gossip implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Integer getId;
	private String content;
	private Date indate;

	// Constructors

	/** default constructor */
	public Gossip() {
	}

	/** full constructor */
	public Gossip(User user, Integer getId, String content, Date indate) {
		this.user = user;
		this.getId = getId;
		this.content = content;
		this.indate = indate;
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

	public Integer getGetId() {
		return this.getId;
	}

	public void setGetId(Integer getId) {
		this.getId = getId;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getIndate() {
		return this.indate;
	}

	public void setIndate(Date indate) {
		this.indate = indate;
	}

}