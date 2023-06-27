package rut.miit.coursework.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import rut.miit.coursework.models.Prescriptions;

public interface PrescriptionsRepository extends JpaRepository<Prescriptions, Integer> {
}
