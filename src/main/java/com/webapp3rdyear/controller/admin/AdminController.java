package com.webapp3rdyear.controller.admin;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Formatter;
import java.util.List;

import com.webapp3rdyear.enity.Products;
import com.webapp3rdyear.enity.Roles;
import com.webapp3rdyear.enity.Users;
import com.webapp3rdyear.enity.model.ProductModel;
import com.webapp3rdyear.enity.model.UserModel;
import com.webapp3rdyear.service.IProductService;
import com.webapp3rdyear.service.IUserService;
import com.webapp3rdyear.service.impl.ProductServiceImpl;
import com.webapp3rdyear.service.impl.UserServiceImpl;
import com.webapp3rdyear.utils.Utils;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
@WebServlet(urlPatterns = {"/admin/accounts", "/admin/account/add", "/admin/products", "/admin/orders", "/admin/products/add",
			"/admin/product/delete", "/admin/product/edit"})
public class AdminController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	IUserService us = new UserServiceImpl();
	IProductService ps = new ProductServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI();
		if(url.contains("/admin/accounts")) {
			List<Users> list = us.findAll();
			req.setAttribute("list",list);
			req.getRequestDispatcher("/view/admin/accounts.jsp").forward(req, resp);
		}
		else if(url.contains("/admin/products")) {
			List<Products> lp = ps.findAll();
			List<ProductModel> lppm = new ArrayList<>();
			lp.forEach(p ->{
				lppm.add(new ProductModel(p));
			});
			req.setAttribute("prod", lppm);
			req.getRequestDispatcher("/view/admin/products.jsp").forward(req, resp);
		}
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String url = req.getRequestURI();
		if(url.contains("/admin/account/add")) {
			final SimpleDateFormat FORMATTER = new SimpleDateFormat("yyyy-MM-dd");
			String fname = req.getParameter("fullname");
			System.out.println("fullname: "+ fname);
			String uname = req.getParameter("username");
			System.out.println("username: " +uname);
			String pw = req.getParameter("password");
			String gender = req.getParameter("gender");
			boolean gd = false;
			if(gender.toLowerCase().equals("nam")) {
				gd = true;
			}
			else {
				gd = false;
			}
			System.out.println("gender: "+gd);
			String dob = req.getParameter("dob");
			/*
			 * Date date = new Date(); try { date = FORMATTER.parse(dob); } catch
			 * (ParseException e) { // TODO Auto-generated catch block e.printStackTrace();
			 * }
			 */
			String area = req.getParameter("area");
			String address = req.getParameter("address");
			String email = req.getParameter("email");
			String image =  Utils.uploadFileImage(req, 2, Utils.generateRandomString(20));
			System.out.println("image của customer: "+image);
			String role = req.getParameter("role");
			long roleid = 0;
			if(role.toLowerCase().equals("admin")) {
				roleid = 1;
			}
			else if(role.toLowerCase().equals("customer")) {
				roleid = 2;
			}
			else if(role.toLowerCase().equals("seller")) {
				roleid = 3;
			}
			else if(role.toLowerCase().equals("shipper")) {
				roleid = 4;
			}
			System.out.println("role: " +roleid);
			Roles rolePerson = new Roles();
			rolePerson.setRoleId(roleid);
			Users user = new Users();
			user.setFullname(fname);
			user.setUsername(uname);
			user.setAccountpassword(pw);
			user.setGender(gd);
			user.setDob(null);
			user.setArea(area);
			user.setAddress(address);
			user.setEmail(email);
			if (image!=null && image.trim().length()>0) {
				user.setAvatar(image);
			}
			user.setRole(rolePerson);
			us.insert(user);
			System.out.println("hello");
			
			resp.sendRedirect(req.getContextPath() + "/admin/accounts");
		}
	}
}
