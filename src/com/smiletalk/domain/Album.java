package com.smiletalk.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Album entity. @author MyEclipse Persistence Tools
 */

public class Album implements java.io.Serializable {

	// Fields

	private Integer alId;
	private User user;
	private String alName;
	private String alPhoto;
	private String alDescription;
	private Date alIndate;
	private Date alUpdate;
	private Set photos = new HashSet(0);

	// Constructors

	/** default constructor */
	public Album() {
	}

	/** minimal constructor */
	public Album(User user) {
		this.user = user;
	}

	/** full constructor */
	public Album(User user, String alName, String alPhoto,
			String alDescription, Date alIndate, Date alUpdate, Set photos) {
		this.user = user;
		this.alName = alName;
		this.alPhoto = alPhoto;
		this.alDescription = alDescription;
		this.alIndate = alIndate;
		this.alUpdate = alUpdate;
		this.photos = photos;
	}

	// Property accessors

	public Integer getAlId() {
		return this.alId;
	}

	public void setAlId(Integer alId) {
		this.alId = alId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getAlName() {
		return this.alName;
	}

	public void setAlName(String alName) {
		this.alName = alName;
	}

	public String getAlPhoto() {
		return this.alPhoto;
	}

	public void setAlPhoto(String alPhoto) {
		this.alPhoto = alPhoto;
	}

	public String getAlDescription() {
		return this.alDescription;
	}

	public void setAlDescription(String alDescription) {
		this.alDescription = alDescription;
	}

	public Date getAlIndate() {
		return this.alIndate;
	}

	public void setAlIndate(Date alIndate) {
		this.alIndate = alIndate;
	}

	public Date getAlUpdate() {
		return this.alUpdate;
	}

	public void setAlUpdate(Date alUpdate) {
		this.alUpdate = alUpdate;
	}

	public Set getPhotos() {
		return this.photos;
	}

	public void setPhotos(Set photos) {
		this.photos = photos;
	}

}