package com.cargo.entity;

import java.util.Set;

import javax.persistence.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

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
public class Truck {
	@Id  //for set  primary key
	@GeneratedValue(strategy = GenerationType.IDENTITY) //autoincrement
	private Integer id;
	private String vehicleNo;
	private Integer loadCapacity;
	
	
	
	@ManyToOne
    @JoinColumn(name = "cargo_id")
    private Cargo cargo;
	
	
	
}
