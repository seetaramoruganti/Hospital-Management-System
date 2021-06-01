package com.techgeeks.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.techgeeks.model.Patient;
import com.techgeeks.repository.PatientRepository;

@Component
public class PatientService implements PatientDao {

	@Autowired
	PatientRepository patientRepository;
	
	@Override
	public void addPatient(Patient patient) {
		// TODO Auto-generated method stub
		patientRepository.save(patient);
	}

	@Override
	public List<Patient> getAll() {
		// TODO Auto-generated method stub
		List<Patient> patientList = patientRepository.findAll();
		return patientList;
	}

	@Override
	public Patient getById(int id, String pass) {
		// TODO Auto-generated method stub
		Patient uniquePatient = patientRepository.getOne(id);
		return uniquePatient;
	}

}
