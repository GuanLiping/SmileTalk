package com.smiletalk.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * City entity. @author MyEclipse Persistence Tools
 */

public class City implements java.io.Serializable {

	// Fields

	private Integer ciId;
	private Country country;
	private String ciName;
	private Set universities = new HashSet(0);
	private Set users = new HashSet(0);

	// Constructors

	/** default constructor */
	public City() {
	}

	/** minimal constructor */
	public City(Country country) {
		this.country = country;
	}

	/** full constructor */
	public City(Country country, String ciName, Set universities, Set users) {
		this.country = country;
		this.ciName = ciName;
		this.universities = universities;
		this.users = users;
	}

	// Property accessors

	public Integer getCiId() {
		return this.ciId;
	}

	public void setCiId(Integer ciId) {
		this.ciId = ciId;
	}

	public Country getCountry() {
		return this.country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	public String getCiName() {
		return this.ciName;
	}

	public void setCiName(String ciName) {
		this.ciName = ciName;
	}

	public Set getUniversities() {
		return this.universities;
	}

	public void setUniversities(Set universities) {
		this.universities = universities;
	}

	public Set getUsers() {
		return this.users;
	}

	public void setUsers(Set users) {
		this.users = users;
	}

}