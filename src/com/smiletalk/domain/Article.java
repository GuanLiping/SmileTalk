package com.smiletalk.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Article entity. @author MyEclipse Persistence Tools
 */

public class Article implements java.io.Serializable {

	// Fields

	private Integer articleId;
	private User user;
	private Integer readNumber;
	private String title;
	private String content;
	private Date indate;
	private Set articleComments = new HashSet(0);
	private Set articleComments_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Article() {
	}

	/** full constructor */
	public Article(User user, Integer readNumber, String title, String content,
			Date indate, Set articleComments, Set articleComments_1) {
		this.user = user;
		this.readNumber = readNumber;
		this.title = title;
		this.content = content;
		this.indate = indate;
		this.articleComments = articleComments;
		this.articleComments_1 = articleComments_1;
	}

	// Property accessors

	public Integer getArticleId() {
		return this.articleId;
	}

	public void setArticleId(Integer articleId) {
		this.articleId = articleId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getReadNumber() {
		return this.readNumber;
	}

	public void setReadNumber(Integer readNumber) {
		this.readNumber = readNumber;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public Set getArticleComments() {
		return this.articleComments;
	}

	public void setArticleComments(Set articleComments) {
		this.articleComments = articleComments;
	}

	public Set getArticleComments_1() {
		return this.articleComments_1;
	}

	public void setArticleComments_1(Set articleComments_1) {
		this.articleComments_1 = articleComments_1;
	}

}