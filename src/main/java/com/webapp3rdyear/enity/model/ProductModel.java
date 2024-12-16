package com.webapp3rdyear.enity.model;

import java.math.BigDecimal;

import com.webapp3rdyear.enity.Products;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductModel {
	private int productId;
	
	private String pname;
	
	private String image;
	
	private BigDecimal price;
	
	private long stock;
	
	private String description;
	
	private int supplierid;
	
    private int categoryID;
    
    public ProductModel(Products product) {
    	productId = product.getProductId();
    	pname = product.getPname();
    	image = product.getImage();
    	price = product.getPrice();
    	stock = product.getStock();
    	description = product.getDescription() ;
    	supplierid = product.getSupplierid().getSupplierID();
    	categoryID = product.getCategoryID().getCategoryID();
	}
}
