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

@Getter
@Setter
@Entity
@Table(name = "Voucher")
@NamedQuery(name = "Voucher.findAll", query = "SELECT vc FROM Voucher vc")
public class Voucher {
	@Id
	@Column(name = "VoucherID", columnDefinition = "VARCHAR(45)")
	private String voucherID; 
	
	@Column(name = "VoucherDescription", columnDefinition = "VARCHAR(1000)")
    private String des;
    
	@Column(name = "Discount", columnDefinition = "Int")
    private int discount;
    
	@Column(name = "MinimumPrice", columnDefinition = "Int")
    private int price; 
    
	@Column(name = "Quantity", columnDefinition = "Int")
    private int quantity; 
    
	@Column(name = "Mfg", columnDefinition = "DATE")
    private String mfg;
    
	@Column(name = "Exp", columnDefinition = "DATE")
    private String exp;
	
    
}
