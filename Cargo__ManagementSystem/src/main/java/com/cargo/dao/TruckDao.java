package com.cargo.dao;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cargo.entity.Cargo;
import com.cargo.entity.Truck;
@Repository
public interface TruckDao extends JpaRepository<Truck, Integer> {

	List<Truck> findByCargo(Cargo cargo);
    Truck findByCargoAndId(Cargo cargo, int id);
	//findByxxx
	//Customized queries
}
