package rut.miit.coursework.repositories;

import org.springframework.data.repository.CrudRepository;
import rut.miit.coursework.models.Diagnoses;

public interface DiagnosesRepository extends CrudRepository<Diagnoses, Integer> {
}
