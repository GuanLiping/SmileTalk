package com.smiletalk.domain;

import java.util.Date;

/**
 * NewsComment entity. @author MyEclipse Persistence Tools
 */

public class NewsComment implements java.io.Serializable {

	// Fields

	private Integer id;
	private News news;
	private String comment;
	private Date indate;

	// Constructors

	/** default constructor */
	public NewsComment() {
	}

	/** full constructor */
	public NewsComment(News news, String comment, Date indate) {
		this.news = news;
		this.comment = comment;
		this.indate = indate;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public News getNews() {
		return this.news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Date getIndate() {
		return this.indate;
	}

	public void setIndate(Date indate) {
		this.indate = indate;
	}

}