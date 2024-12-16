package com.webapp3rdyear.enity;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.MapsId;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "Cart")
@NamedQuery(name = "Cart.findAll", query = "SELECT ca FROM Cart ca")
public class Cart implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@ManyToOne
    @JoinColumn(name = "CustomerID")
	private Users CustomerID; 

	@Id
	@ManyToOne
    @JoinColumn(name = "ProductID")
    private Products ProductID;  
	
	@Column(name = "Quantity", columnDefinition = "Int")
    private int quantity;
}
