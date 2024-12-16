package com.webapp3rdyear.enity;

import java.math.BigDecimal;

import com.webapp3rdyear.enity.model.OrderStatus;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
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
@Table(name = "Orders")
@NamedQuery(name = "Orders.findAll", query = "SELECT od FROM Orders od")
public class Orders {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "OrderID")
	private int orderId; 
	
	@Column(name = "OrderDate", columnDefinition = "DATE")
    private String orderDate;
	
	@ManyToOne
    @JoinColumn(name = "CustomerID", referencedColumnName = "UserID")
    private Users customer;
	
	@ManyToOne
    @JoinColumn(name = "VoucherID", referencedColumnName = "VoucherID")
    private Voucher voucher;
	
	@ManyToOne
	@JoinColumn(name = "SellerID",referencedColumnName = "UserID")
    private Users sellerID;
	
	@ManyToOne
	@JoinColumn(name = "ShipperID", referencedColumnName = "UserID")
    private Users shipperID;
    
	@Column(name = "DeliveryTime", columnDefinition = "DATE")
    private boolean deliveryTime; 
    
	@Column(name = "Note", columnDefinition = "VARCHAR(100)")
    private String note; 
	
	@Column(name = "DiscountPrice", precision = 10, scale = 3, nullable = false)
	private BigDecimal disprice;
	
	@Column(name = "TotalPrice", precision = 10, scale = 3, nullable = false)
	private BigDecimal totalprice;
	
	@Enumerated(EnumType.STRING)
    @Column(name = "Status", nullable = false, columnDefinition = "ENUM('Pending', 'Shipping', 'Delivered', 'Cancelled')")
    private OrderStatus status;
}

