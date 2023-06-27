package rut.miit.coursework.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rut.miit.coursework.repositories.*;

import java.util.List;

@Service
public class MainService {

    private final SpecializationsRepository specializationsRepository;
    private final ContactsRepository contactsRepository;
    private final FormsRepository formsRepository;
    private final PeopleRepository peopleRepository;
    private final MedicinesRepository medicinesRepository;

    // Dependency Injection
    @Autowired
    public MainService(SpecializationsRepository specializationsRepository,
                       ContactsRepository contactsRepository,
                       FormsRepository formsRepository,
                       PeopleRepository peopleRepository,
                       MedicinesRepository medicinesRepository) {
        this.specializationsRepository = specializationsRepository;
        this.contactsRepository = contactsRepository;
        this.formsRepository = formsRepository;
        this.peopleRepository = peopleRepository;
        this.medicinesRepository = medicinesRepository;
    }

    public List<String> getPhoneByInsuranceNumber(String insuranceNumber) {
        return contactsRepository.findPhoneByInsuranceNumber(insuranceNumber);
    }

    public List<String> getFormNamesByPrescriptionId(Long prescriptionId) {
        return formsRepository.findFormNamesByPrescriptionId(prescriptionId);
    }


    public List<String> getSpecializationsByHospitalId(Long hospitalId) {
        return specializationsRepository.findSpecializationsByHospitalId(hospitalId);
    }

    public List<Object[]> getPatientsAndDoctorsByDiagnosis(String diagnosisName) {
        return peopleRepository.findPatientsAndDoctorsByDiagnosis(diagnosisName);
    }

    public List<String> getMedicines(String hospitalName, String specializationName, Double salary, String diagnosisName) {
        return medicinesRepository.findMedicinesByHospitalNameAndSpecializationNameAndSalaryAndDiagnosisName(hospitalName, specializationName, salary, diagnosisName);
    }

}

