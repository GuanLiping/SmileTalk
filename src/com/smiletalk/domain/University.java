package com.smiletalk.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * University entity. @author MyEclipse Persistence Tools
 */

public class University implements java.io.Serializable {

	// Fields

	private Integer universityId;
	private Country country;
	private City city;
	private String name;
	private Set userUniversities = new HashSet(0);

	// Constructors

	/** default constructor */
	public University() {
	}

	/** minimal constructor */
	public University(Country country, City city, String name) {
		this.country = country;
		this.city = city;
		this.name = name;
	}

	/** full constructor */
	public University(Country country, City city, String name,
			Set userUniversities) {
		this.country = country;
		this.city = city;
		this.name = name;
		this.userUniversities = userUniversities;
	}

	// Property accessors

	public Integer getUniversityId() {
		return this.universityId;
	}

	public void setUniversityId(Integer universityId) {
		this.universityId = universityId;
	}

	public Country getCountry() {
		return this.country;
	}

	public void setCountry(Country country) {
		this.country = country;
	}

	public City getCity() {
		return this.city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getUserUniversities() {
		return this.userUniversities;
	}

	public void setUserUniversities(Set userUniversities) {
		this.userUniversities = userUniversities;
	}

}