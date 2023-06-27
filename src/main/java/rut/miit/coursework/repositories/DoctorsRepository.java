package rut.miit.coursework.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import rut.miit.coursework.models.Doctors;

public interface DoctorsRepository extends JpaRepository<Doctors, Integer> {

}
