package com.smiletalk.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Country entity. @author MyEclipse Persistence Tools
 */

public class Country implements java.io.Serializable {

	// Fields

	private Integer coId;
	private String coName;
	private Set universities = new HashSet(0);
	private Set cities = new HashSet(0);

	// Constructors

	/** default constructor */
	public Country() {
	}

	/** minimal constructor */
	public Country(String coName) {
		this.coName = coName;
	}

	/** full constructor */
	public Country(String coName, Set universities, Set cities) {
		this.coName = coName;
		this.universities = universities;
		this.cities = cities;
	}

	// Property accessors

	public Integer getCoId() {
		return this.coId;
	}

	public void setCoId(Integer coId) {
		this.coId = coId;
	}

	public String getCoName() {
		return this.coName;
	}

	public void setCoName(String coName) {
		this.coName = coName;
	}

	public Set getUniversities() {
		return this.universities;
	}

	public void setUniversities(Set universities) {
		this.universities = universities;
	}

	public Set getCities() {
		return this.cities;
	}

	public void setCities(Set cities) {
		this.cities = cities;
	}

}