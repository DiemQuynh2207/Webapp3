package com.webapp3rdyear.service.impl;

import java.util.List;

import com.webapp3rdyear.dao.IProductDao;
import com.webapp3rdyear.dao.impl.ProductDaoImpl;
import com.webapp3rdyear.enity.Products;
import com.webapp3rdyear.service.IProductService;

public class ProductServiceImpl implements IProductService{

	IProductDao ipdao = new ProductDaoImpl();
	
	@Override
	public List<Products> findAll() {
		// TODO Auto-generated method stub
		return ipdao.findAll();
	}

	@Override
	public List<Products> findAll(int page, int pageSize) {
		// TODO Auto-generated method stub
		return ipdao.findAll(page, pageSize);
	}

	@Override
	public Products findById(int id) {
		// TODO Auto-generated method stub
		return ipdao.findById(id);
	}

	@Override
	public void insert(Products product) {
		// TODO Auto-generated method stub
		ipdao.insert(product);
	}

	@Override
	public boolean update(Products product) {
		// TODO Auto-generated method stub
		return ipdao.update(product);
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return ipdao.delete(id);
	}

	@Override
	public List<Products> findByName(String keyword) {
		// TODO Auto-generated method stub
		return ipdao.findByName(keyword);
	}

	@Override
	public List<Products> findByName(String keyword, int page, int pageSize) {
		// TODO Auto-generated method stub
		return ipdao.findByName(keyword, page, pageSize);
	}

	@Override
	public boolean softDelete(Products product) {
		// TODO Auto-generated method stub
		return ipdao.softDelete(product);
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return ipdao.count();
	}

}
