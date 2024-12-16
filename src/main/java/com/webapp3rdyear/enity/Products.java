package com.webapp3rdyear.enity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "Products")
@NamedQuery(name = "Products.findAll", query = "SELECT prod FROM Products prod")
public class Products implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ProductID")
	private int productId;
	
	@Column(name = "PName", columnDefinition = "VARCHAR(100) NOT NULL")
	private String pname;
	
	@Column(name = "Image_URL", columnDefinition = "VARCHAR(255) NULL")
	private String image;
	
	@Column(name = "Price", precision = 10, scale = 3, nullable = false)
	private BigDecimal price;
	
	@Column(name = "Stock", columnDefinition = "int")
	private long stock;
	
	@Column(name = "Pdescription", columnDefinition = "LONGTEXT NULL")
	private String description;
	
	@ManyToOne
	@JoinColumn(name = "SupplierID")
	private Supplier supplierid;
	
	@ManyToOne
    @JoinColumn(name = "CategoryID")  // foreign key reference
    private Category categoryID;
	
	public Products() {
		
	}
}
