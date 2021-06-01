package com.techgeeks.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.techgeeks.model.Patient;

@Repository
public interface PatientRepository extends JpaRepository<Patient, Integer> {

}
