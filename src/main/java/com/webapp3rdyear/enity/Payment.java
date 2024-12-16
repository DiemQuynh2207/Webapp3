package com.webapp3rdyear.enity;



import com.webapp3rdyear.enity.model.PaymentMethod;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "Payment")
@NamedQuery(name = "Payment.findAll", query = "SELECT od FROM Payment od")
public class Payment {
	@Id
    @Column(name = "PaymentID")
    @JoinColumn(name = "PaymentID", referencedColumnName = "OrderID")
    private int paymentId;  // PaymentID is linked to OrderID in ORDERS table.

    @Enumerated(EnumType.STRING)
    @Column(name = "Method", nullable = false)
    private PaymentMethod method;  // ENUM field for payment method.
    
    @OneToOne
    @JoinColumn(name = "PaymentID")  // Join on PaymentID, same as OrderID
    private Orders order; // Assuming there's a one-to-one relationship with Orders

}

