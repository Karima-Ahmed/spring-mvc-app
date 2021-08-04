package com.spring.model;

import java.util.HashMap;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;



public class Student {

	@NotEmpty(message = "required!")
	private String name;

	@NotNull
	private Integer age;

	private String country;

	private String lang;
	
	private String[] sports;
	
	private HashMap<String, String> countries;
	
	public Student() {
		countries = new HashMap<>();
		countries.put("France", "fr");
		countries.put("Egypt", "eg");
		countries.put("United States", "us");
	}
	
	public HashMap<String, String> getCountries() {
		return countries;
	}

	public void setCountries(HashMap<String, String> countries) {
		this.countries = countries;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}

	public String[] getSports() {
		return sports;
	}

	public void setSports(String[] sports) {
		this.sports = sports;
	}
	
}
