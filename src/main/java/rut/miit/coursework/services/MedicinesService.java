package rut.miit.coursework.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rut.miit.coursework.models.Medicines;
import rut.miit.coursework.repositories.MedicinesRepository;

import java.util.ArrayList;
import java.util.List;

@Service
public class MedicinesService {
    private final MedicinesRepository medicinesRepository;

    @Autowired
    public MedicinesService(MedicinesRepository medicinesRepository) {
        this.medicinesRepository = medicinesRepository;
    }

    public List<Medicines> getAllMedicines() {
        List<Medicines> medicines = new ArrayList<>();
        medicinesRepository.findAll().forEach(medicines::add);
        return medicines;
    }

    public Medicines getMedicine(Integer id) {
        return medicinesRepository.findById(id).orElse(null);
    }

    public void addMedicine(Medicines medicine) {
        medicinesRepository.save(medicine);
    }

    public void updateMedicine(Medicines medicine) {
        medicinesRepository.save(medicine);
    }

    public void deleteMedicine(Integer id) {
        medicinesRepository.deleteById(id);
    }
}
