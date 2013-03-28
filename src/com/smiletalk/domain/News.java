package com.smiletalk.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * News entity. @author MyEclipse Persistence Tools
 */

public class News implements java.io.Serializable {

	// Fields

	private Integer newsId;
	private User user;
	private String content;
	private Date indate;
	private Set newsComments = new HashSet(0);

	// Constructors

	/** default constructor */
	public News() {
	}

	/** full constructor */
	public News(User user, String content, Date indate, Set newsComments) {
		this.user = user;
		this.content = content;
		this.indate = indate;
		this.newsComments = newsComments;
	}

	// Property accessors

	public Integer getNewsId() {
		return this.newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
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

	public Set getNewsComments() {
		return this.newsComments;
	}

	public void setNewsComments(Set newsComments) {
		this.newsComments = newsComments;
	}

}