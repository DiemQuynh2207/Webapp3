package com.webapp3rdyear.enity;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.NamedQuery;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "Roles")
@NamedQuery(name = "Roles.findAll", query = "SELECT role FROM Roles role")
public class Roles  implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "Roleid")
    private Long roleId;
	
	@Column(name = "RoleName", columnDefinition = "VARCHAR(45)")
    private String roleName;
}
