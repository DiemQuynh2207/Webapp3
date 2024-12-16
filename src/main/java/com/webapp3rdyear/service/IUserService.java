package com.webapp3rdyear.service;

import java.util.List;

import com.webapp3rdyear.enity.Users;

public interface IUserService {
	List<Users> findAll();
	
	List<Users> findAll (int page, int pageSize);
	
	Users findById(int id);
	
	Users findByEmail(String email);
	
	Users findByUserName(String username);
	
	void insert(Users users);
	
	boolean register (Users users);
	
	boolean update(Users users);
	
	boolean delete(String username);
		
	boolean login(String username, String pass);

	boolean softDelete(Users users);
	
	int count();
}
