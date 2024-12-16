package com.webapp3rdyear.enity;

import java.io.Serializable;
import java.math.BigDecimal;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "ORDER_DETAIL")
@NamedQuery(name = "ORDER_DETAIL.findAll", query = "SELECT odd FROM OrderDetail odd")
public class OrderDetail  implements Serializable{

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@ManyToOne
    @Id
    @JoinColumn(name = "OrderID", insertable = false, updatable = false)
    private Orders order;  // Foreign key relationship with ORDERS.

    @ManyToOne
    @Id
    @JoinColumn(name = "ProductID", insertable = false, updatable = false)
    private Products product;  // Foreign key relationship with PRODUCTS.

    @Column(name = "PName", columnDefinition = "VARCHAR(100)")
    private String pname;  // Name of the product.

    @Column(name = "Price", columnDefinition = "DECIMAL(10, 3)")
    private BigDecimal price;  // Price of the product.

    @Column(name = "Quantity", columnDefinition = "INT")
    private int quantity;  // Quantity of the product in the order.
}
