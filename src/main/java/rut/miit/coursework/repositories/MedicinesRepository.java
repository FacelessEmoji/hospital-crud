package rut.miit.coursework.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import rut.miit.coursework.models.Medicines;

import java.util.List;

public interface MedicinesRepository extends JpaRepository<Medicines, Integer> {
    @Query("SELECT DISTINCT me.medicineName FROM Hospitals h JOIN h.doctors d JOIN d.specialization sp JOIN d.visits v JOIN v.diagnosis dg JOIN d.prescriptions pr JOIN pr.appointments ap JOIN ap.medicine me WHERE h.hospitalName = :hospitalName AND sp.specializationName = :specializationName AND d.salary > :salary AND dg.diagnosisName = :diagnosisName ORDER BY me.medicineName ASC")
    List<String> findMedicinesByHospitalNameAndSpecializationNameAndSalaryAndDiagnosisName(@Param("hospitalName") String hospitalName, @Param("specializationName") String specializationName, @Param("salary") Double salary, @Param("diagnosisName") String diagnosisName);
}