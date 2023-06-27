package rut.miit.coursework.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rut.miit.coursework.models.Doctors;
import rut.miit.coursework.repositories.DoctorsRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class DoctorsService {
    private final DoctorsRepository doctorsRepository;

    @Autowired
    public DoctorsService(DoctorsRepository doctorsRepository) {
        this.doctorsRepository = doctorsRepository;
    }

    public List<Doctors> getAllDoctors() {
        List<Doctors> doctors = new ArrayList<>();
        doctorsRepository.findAll().forEach(doctors::add);
        return doctors;
    }

    public Doctors getDoctor(Integer id) {
        Optional<Doctors> optionalDoctor = doctorsRepository.findById(id);
        return optionalDoctor.orElse(null);
    }

    public void addDoctor(Doctors doctor) {
        doctorsRepository.save(doctor);
    }

    public void updateDoctor(Doctors doctor) {
        doctorsRepository.save(doctor);
    }

    public void deleteDoctor(Integer id) {
        doctorsRepository.deleteById(id);
    }

}
