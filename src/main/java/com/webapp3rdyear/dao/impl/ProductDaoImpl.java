package com.webapp3rdyear.dao.impl;

import java.util.List;

import com.webapp3rdyear.config.JPAConfig;
import com.webapp3rdyear.dao.IProductDao;
import com.webapp3rdyear.enity.Products;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;

public class ProductDaoImpl implements IProductDao{

	@Override
	public List<Products> findAll() {
		EntityManager enma = JPAConfig.getEntityManager();
		TypedQuery<Products> query = enma.createNamedQuery("Products.findAll", Products.class);
		return query.getResultList();
	}

	@Override
	public List<Products> findAll(int page, int pageSize) {
		EntityManager enma = JPAConfig.getEntityManager();
		TypedQuery<Products> query = enma.createNamedQuery("Products.findAll", Products.class);
		query.setFirstResult(page*pageSize);
		query.setMaxResults(pageSize);
		return query.getResultList();
	}

	@Override
	public Products findById(int id) {
		EntityManager enma = JPAConfig.getEntityManager();
		Products product = enma.find(Products.class, id);
		return product;
	}

	@Override
	public void insert(Products product) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			enma.persist(product);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
		}finally {
			enma.close();
		}
		
	}

	@Override
	public boolean update(Products product) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			enma.merge(product);
			trans.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			return false;
		}finally {
			enma.close();
		}
		return true;
	}

	@Override
	public boolean delete(int id) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			Products catego = enma.find(Products.class, id);
			if(catego!=null)
				enma.remove(catego);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			return false;
		}finally {
			enma.close();
		}
		return true;
	}

	@Override
	public List<Products> findByName(String keyword) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT p FROM Products p WHERE p.PName like :productname";
		TypedQuery<Products> query = enma.createQuery(jpql, Products.class);
		query.setParameter("productname", "%"+keyword+"%");
		
		return query.getResultList();
	}

	@Override
	public List<Products> findByName(String keyword, int page, int pageSize) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT p FROM Products p WHERE p.PName like :productname";
		TypedQuery<Products> query = enma.createQuery(jpql, Products.class);
		query.setParameter("productname", "%"+keyword+"%");
		query.setFirstResult(page*pageSize);
		query.setMaxResults(pageSize);
		return query.getResultList();
	}

	@Override
	public boolean softDelete(Products Products) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int count() {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT count(p) FROM Products p";
		Query query = enma.createQuery(jpql);
		return ((Long)query.getSingleResult()).intValue();
	}

}
