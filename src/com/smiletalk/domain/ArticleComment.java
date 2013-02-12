package com.smiletalk.domain;

import java.util.Date;

/**
 * ArticleComment entity. @author MyEclipse Persistence Tools
 */

public class ArticleComment implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private Article article;
	private String content;
	private Date indate;

	// Constructors

	/** default constructor */
	public ArticleComment() {
	}

	/** full constructor */
	public ArticleComment(User user, Article article, String content,
			Date indate) {
		this.user = user;
		this.article = article;
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

	public Article getArticle() {
		return this.article;
	}

	public void setArticle(Article article) {
		this.article = article;
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