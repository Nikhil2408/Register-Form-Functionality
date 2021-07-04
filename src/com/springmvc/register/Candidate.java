package com.springmvc.register;

import java.util.HashMap;
import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Candidate 
{
	@NotBlank(message="First Name is required")
	private String firstName;
	
	@NotBlank(message="Last Name is required")
	private String lastName;
	
	@NotBlank(message="UserName is required")
	private String userName;
	
	@NotBlank(message="Email Address is required")
	private String emailAddress;
	
	private String location;
	private HashMap<String, String> locationList;
	
	@NotNull(message="Postal Code is required")
	private Integer postalCode;

	private List<String> coursesEnrolled;
	private HashMap<String, String> courses;
	
	public Candidate()
	{
		courses=new HashMap<String, String>();
		courses.put("Java","Java");
		courses.put("Python","Python");
		courses.put("JavaScript","JavaScript");
		courses.put("React", "React");
		courses.put("AWS","AWS");
		courses.put("C++","C++");
		
		locationList=new HashMap<String, String>();
		locationList.put("India", "India");
		locationList.put("Australia", "Australia");
		locationList.put("United States", "United States");
		locationList.put("Canada", "Canada");
		locationList.put("Mexico", "Mexico");
		locationList.put("Brazil", "Brazil");
	}
	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public HashMap<String, String> getLocationList() {
		return locationList;
	}

	public void setLocationList(HashMap<String, String> locationList) {
		this.locationList = locationList;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}



	public Integer getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(Integer postalCode) {
		this.postalCode = postalCode;
	}

	public List<String> getCoursesEnrolled() {
		return coursesEnrolled;
	}

	public void setCoursesEnrolled(List<String> coursesEnrolled) {
		this.coursesEnrolled = coursesEnrolled;
	}

	public HashMap<String, String> getCourses() {
		return courses;
	}

	public void setCourses(HashMap<String, String> courses) {
		this.courses = courses;
	}

	
	
}
