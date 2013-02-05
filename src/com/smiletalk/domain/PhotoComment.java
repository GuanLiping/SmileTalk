package com.smiletalk.domain;

import java.util.Date;

/**
 * PhotoComment entity. @author MyEclipse Persistence Tools
 */

public class PhotoComment implements java.io.Serializable {

	// Fields

	private Integer pcId;
	private Photo photo;
	private User user;
	private String pcContent;
	private Date pcIndate;

	// Constructors

	/** default constructor */
	public PhotoComment() {
	}

	/** minimal constructor */
	public PhotoComment(Photo photo, User user) {
		this.photo = photo;
		this.user = user;
	}

	/** full constructor */
	public PhotoComment(Photo photo, User user, String pcContent, Date pcIndate) {
		this.photo = photo;
		this.user = user;
		this.pcContent = pcContent;
		this.pcIndate = pcIndate;
	}

	// Property accessors

	public Integer getPcId() {
		return this.pcId;
	}

	public void setPcId(Integer pcId) {
		this.pcId = pcId;
	}

	public Photo getPhoto() {
		return this.photo;
	}

	public void setPhoto(Photo photo) {
		this.photo = photo;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getPcContent() {
		return this.pcContent;
	}

	public void setPcContent(String pcContent) {
		this.pcContent = pcContent;
	}

	public Date getPcIndate() {
		return this.pcIndate;
	}

	public void setPcIndate(Date pcIndate) {
		this.pcIndate = pcIndate;
	}

}