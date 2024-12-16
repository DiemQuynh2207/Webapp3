package com.webapp3rdyear.enity;


import java.io.Serializable;
import java.util.Date;

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
@Table(name = "SearchHistory")
@NamedQuery(name = "SearchHistory.findAll", query = "SELECT sh FROM SearchHistory sh")
public class SearchHistory implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@ManyToOne
    @JoinColumn(name = "CustomerID")
	private Users CustomerID; 
	
	@Id
	@Column(name = "CreateAt", columnDefinition = "DATE")
	private Date createAt;
	
	@Column(name = "SearchHistory", columnDefinition = "varchar(45)")
	private Date searchhistory;
}
