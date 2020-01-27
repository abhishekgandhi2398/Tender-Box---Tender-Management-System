package com.model;

public class Login 
{
	
	private String username;
	private String password;
	private String profileType;
	
	public String getProfileType() {
		return profileType;
	}
	public void setProfileType(String profileType) {
		this.profileType = profileType;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Login [username=" + username + ", password=" + password + ", profileType=" + profileType + "]";
	}
	
	
	
	

}
