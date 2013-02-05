package com.smiletalk.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Photo entity. @author MyEclipse Persistence Tools
 */

public class Photo implements java.io.Serializable {

	// Fields

	private Integer PId;
	private Album album;
	private String PPhoto;
	private String PDescription;
	private Integer PRead;
	private Date PIndate;
	private Set photoComments = new HashSet(0);
	private Set photoComments_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public Photo() {
	}

	/** minimal constructor */
	public Photo(Album album) {
		this.album = album;
	}

	/** full constructor */
	public Photo(Album album, String PPhoto, String PDescription,
			Integer PRead, Date PIndate, Set photoComments, Set photoComments_1) {
		this.album = album;
		this.PPhoto = PPhoto;
		this.PDescription = PDescription;
		this.PRead = PRead;
		this.PIndate = PIndate;
		this.photoComments = photoComments;
		this.photoComments_1 = photoComments_1;
	}

	// Property accessors

	public Integer getPId() {
		return this.PId;
	}

	public void setPId(Integer PId) {
		this.PId = PId;
	}

	public Album getAlbum() {
		return this.album;
	}

	public void setAlbum(Album album) {
		this.album = album;
	}

	public String getPPhoto() {
		return this.PPhoto;
	}

	public void setPPhoto(String PPhoto) {
		this.PPhoto = PPhoto;
	}

	public String getPDescription() {
		return this.PDescription;
	}

	public void setPDescription(String PDescription) {
		this.PDescription = PDescription;
	}

	public Integer getPRead() {
		return this.PRead;
	}

	public void setPRead(Integer PRead) {
		this.PRead = PRead;
	}

	public Date getPIndate() {
		return this.PIndate;
	}

	public void setPIndate(Date PIndate) {
		this.PIndate = PIndate;
	}

	public Set getPhotoComments() {
		return this.photoComments;
	}

	public void setPhotoComments(Set photoComments) {
		this.photoComments = photoComments;
	}

	public Set getPhotoComments_1() {
		return this.photoComments_1;
	}

	public void setPhotoComments_1(Set photoComments_1) {
		this.photoComments_1 = photoComments_1;
	}

}