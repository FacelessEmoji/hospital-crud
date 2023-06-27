package rut.miit.coursework.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import rut.miit.coursework.models.Visits;

public interface VisitsRepository extends JpaRepository<Visits, Integer> {
}

