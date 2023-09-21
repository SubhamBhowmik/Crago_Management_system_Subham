package com.cargo.service.impl;

import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cargo.dao.CargoDao;
import com.cargo.dao.TruckDao;
import com.cargo.entity.Cargo;
import com.cargo.entity.Truck;
import com.cargo.exception.CargoNotFoundException;

@Service
public class TruckServiceImpl {
	

	private TruckDao truckRepo;
	private CargoDao cargoRepo;
	
	@Autowired
	public TruckServiceImpl(TruckDao truckRepo,CargoDao cargoRepo) {
		//super();
		this.truckRepo = truckRepo;
		this.cargoRepo=cargoRepo;
	}


	//crud operations
	//savebook data
	//insert query is generated at runtime by server using hibernate and jpa
	public Truck saveTruck(int cargoId,Truck truck) throws CargoNotFoundException
	{
		Cargo cargo = cargoRepo.findById(cargoId).orElse(null);
		if(cargo!=null)
        {
        truck.setCargo(cargo);
        return truckRepo.save(truck);
        }
        else
        {
        	throw new CargoNotFoundException("Cargo is not existed");
        } 
	}
	

	public List<Truck> getAllTrucks()
	{
		return truckRepo.findAll();
	}
	
	public 	Truck getTruckById(int id)
	{
		return truckRepo.findById(id).orElse(null);
	}

	public Truck updateTruck(int cargoId,int truckId, Truck truck)
	{
		Cargo cargo = cargoRepo.findById(cargoId).orElse(null);
		
		Truck existingtruck=truckRepo.findByCargoAndId(cargo,truckId);
		
		if(existingtruck!=null)
		{
			existingtruck.setVehicleNo(truck.getVehicleNo());
			existingtruck.setLoadCapacity(truck.getLoadCapacity());
		
		return truckRepo.save(existingtruck);
		}
		return null;
	}
	
	public void deleteTruck(int id)
	{
		 truckRepo.deleteById(id);
	}
	
	public List<Truck> getTruckByCargoId(int cargoId) {
        Cargo cargo = cargoRepo.findById(cargoId).orElse(null);
        return truckRepo.findByCargo(cargo);
    }
	
}
