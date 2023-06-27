package rut.miit.coursework.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import rut.miit.coursework.models.Specializations;

import java.util.List;


public interface SpecializationsRepository extends JpaRepository<Specializations, Long> {
    @Query("SELECT s.specializationName FROM Hospitals h JOIN h.doctors d JOIN d.specialization s WHERE h.id = :hospitalId")
    List<String> findSpecializationsByHospitalId(@Param("hospitalId") Long hospitalId);
}
