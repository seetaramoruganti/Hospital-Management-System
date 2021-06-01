package com.techgeeks.dao;

import java.util.List;

import com.techgeeks.model.Patient;

public interface PatientDao {
	
	public void addPatient(Patient patient);
	public List<Patient> getAll();
	public Patient getById(int id,String pass);
}
