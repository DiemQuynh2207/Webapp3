package com.webapp3rdyear.enity;


import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.webapp3rdyear.utils.StringToDateConverter;

import jakarta.persistence.Column;
import jakarta.persistence.Convert;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "Users")
@NamedQuery(name = "Users.findAll", query = "SELECT user FROM Users user")
public class Users implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "UserId")
	private int userId; 
	
	@Column(name = "FullName", columnDefinition = "VARCHAR(100)")
    private String fullname;
	
	@Column(name = "UserName", columnDefinition = "VARCHAR(100)")
    private String username;
	
	@Column(name = "AccountPassword", columnDefinition = "VARCHAR(100) NOT NULL")
    private String accountpassword;
    
	@Column(name = "Gender", columnDefinition = "Bit")
    private boolean gender; 
    
	@Column(name = "Phone", columnDefinition = "VARCHAR(11)")
    private String phone; 
	
//	@Convert(converter = StringToDateConverter.class)
	@Column(name = "DoB", columnDefinition = "DATE")
    private String Dob;

	@Column(name = "Avatar", columnDefinition = "VARCHAR(1000)")
    private String avatar;
    
	@Column(name = "Area", columnDefinition = "VARCHAR(100)")
    private String area; 
    
	@Column(name = "Address", columnDefinition = "VARCHAR(1000)")
    private String address;
    
	@Column(name = "Email", columnDefinition = "VARCHAR(100)")
    private String email;
	
	@ManyToOne
    @JoinColumn(name = "roleid", referencedColumnName = "roleid")  // foreign key reference
    private Roles role;  // This represents the foreign key relationship
	 
	 
    public Users() {
    	
	}


    
}

	

	
