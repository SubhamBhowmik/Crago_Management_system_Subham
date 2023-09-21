package com.cargo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.cargo.entity.Cargo;
@Repository
public interface CargoDao extends JpaRepository<Cargo, Integer> {

	//findByxxx
	//Customized queries
}
