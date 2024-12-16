package com.webapp3rdyear.enity.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import org.apache.catalina.User;

import com.webapp3rdyear.enity.Users;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
public class UserModel {
	private int userId; 
	
    private String fullname;
	
    private String username;
	
    private String accountpassword;
    
    private boolean gender; 
    
    private String phone; 
	
    private Date Dob;

    private String avatar;
    
    private String area; 
    
    private String address;
    
    private String email;
	
    private Long role;
    
    public UserModel(Users user) {
    	final SimpleDateFormat FORMATTER = new SimpleDateFormat("yyyy-MM-dd");
    	userId = user.getUserId();
    	fullname = user.getFullname();
    	username = user.getUsername();
    	accountpassword = user.getAccountpassword();
    	gender = user.isGender();
    	phone = user.getPhone();
    	try {
			Dob = FORMATTER.parse(user.getDob());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	avatar = "http://localhost:8080/Webapp_3rdYear/image&fname=" + user.getAvatar();
    	area = user.getArea();
    	address = user.getAddress();
    	email = user.getEmail();
    	role = user.getRole().getRoleId();
    }
}
