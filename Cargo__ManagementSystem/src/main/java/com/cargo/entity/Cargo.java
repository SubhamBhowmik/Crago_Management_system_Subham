package com.cargo.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


import javax.persistence.CascadeType;
import javax.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Cargo {
	@Id  //for set  primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY) //autoincrement
	private Integer id;
	private String name;
	private Long contactNo;
	private String email;
	private String destination;
	
	
	@OneToMany(mappedBy = "cargo", cascade = CascadeType.ALL)
    private Set<Truck> truck = new HashSet<>();
	
	
}
