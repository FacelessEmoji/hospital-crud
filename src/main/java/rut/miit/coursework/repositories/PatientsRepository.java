package rut.miit.coursework.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import rut.miit.coursework.models.Patients;

public interface PatientsRepository extends JpaRepository<Patients, Integer> {

}
