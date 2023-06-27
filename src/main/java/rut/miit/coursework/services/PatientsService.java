package rut.miit.coursework.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rut.miit.coursework.models.Patients;
import rut.miit.coursework.repositories.PatientsRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
public class PatientsService {
    private final PatientsRepository patientsRepository;

    @Autowired
    public PatientsService(PatientsRepository patientsRepository) {
        this.patientsRepository = patientsRepository;
    }

    public List<Patients> getAllPatients() {
        List<Patients> patients = new ArrayList<>();
        patientsRepository.findAll().forEach(patients::add);
        return patients;
    }

    public Patients getPatient(Integer id) {
        return patientsRepository.findById(id).orElse(null);
    }

    public void addPatient(Patients patient) {
        patientsRepository.save(patient);
    }

    public void updatePatient(Patients patient) {
        patientsRepository.save(patient);
    }

    public void deletePatient(Integer id) {
        patientsRepository.deleteById(id);
    }

}
