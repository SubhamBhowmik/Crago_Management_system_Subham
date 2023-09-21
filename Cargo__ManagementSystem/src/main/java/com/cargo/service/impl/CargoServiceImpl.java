package com.cargo.service.impl;

import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cargo.dao.CargoDao;
import com.cargo.entity.Cargo;
import com.cargo.service.CargoService;

@Service
public class CargoServiceImpl implements CargoService {

	@Autowired
	private CargoDao cargoRepo;

	@Override
	public boolean saveCargo(Cargo cargo) {

	
			Cargo cargoSave = cargoRepo.save(cargo);
		
		
		boolean flag = false;

		if (cargoSave != null)
			flag = true;    //if inserted successfully

		return flag;
	}

	@Override
	public List<Cargo> getAllCargo() {
		// TODO Auto-generated method stub
		//select *from employee;        return all rows
		List<Cargo> cargoRecords = cargoRepo.findAll();
		return cargoRecords;
	}

	@Override
	public Cargo getCargoId(int id) {
		
		Optional<Cargo> cargoId = cargoRepo.findById(id);
		Cargo cargo = cargoId.get();
		return cargo;
	}
	

	@Override
	public boolean updateCargo(Cargo cargo) {
		
		return saveCargo(cargo);
	}

	@Override
	public boolean deleteCargo(int id) {

		Cargo cargo = getCargoId(id);
		boolean flag=false;
		if(cargo!=null)
		{
			cargoRepo.delete(cargo);
		flag=true;	
		}
		
			
		
		return flag;
		
		
	}



}
