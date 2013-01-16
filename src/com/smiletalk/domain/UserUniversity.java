package com.smiletalk.domain;

/**
 * UserUniversity entity. @author MyEclipse Persistence Tools
 */

public class UserUniversity implements java.io.Serializable {

	// Fields

	private Integer id;
	private User user;
	private University university;
	private Integer uniYear;
	private String userType;
	private String college;

	// Constructors

	/** default constructor */
	public UserUniversity() {
	}

	/** minimal constructor */
	public UserUniversity(User user, University university) {
		this.user = user;
		this.university = university;
	}

	/** full constructor */
	public UserUniversity(User user, University university, Integer uniYear,
			String userType, String college) {
		this.user = user;
		this.university = university;
		this.uniYear = uniYear;
		this.userType = userType;
		this.college = college;
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

	public University getUniversity() {
		return this.university;
	}

	public void setUniversity(University university) {
		this.university = university;
	}

	public Integer getUniYear() {
		return this.uniYear;
	}

	public void setUniYear(Integer uniYear) {
		this.uniYear = uniYear;
	}

	public String getUserType() {
		return this.userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getCollege() {
		return this.college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

}