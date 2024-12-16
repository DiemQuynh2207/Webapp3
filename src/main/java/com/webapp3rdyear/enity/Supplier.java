package com.webapp3rdyear.enity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "Supplier")
@Getter
@Setter
@NamedQuery(name = "Supplier.findAll", query = "SELECT supp FROM Supplier supp")
public class Supplier {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "SupplierID")
	private int supplierID;
	
	@Column(name = "SupplierName", columnDefinition = "VARCHAR(100)")
	private String supplierName;
	
	@Column(name = "SCallNumber", columnDefinition = "VARCHAR(11)")
	private String sCallNumber;
	
	@Column(name = "SupplierAddress", columnDefinition = "VARCHAR(100)")
	private String supplierAddress;

}
