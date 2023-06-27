package rut.miit.coursework.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import rut.miit.coursework.models.Hospitals;

public interface HospitalsRepository extends JpaRepository<Hospitals, Integer> {
}
