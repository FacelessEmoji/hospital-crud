package rut.miit.coursework.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import rut.miit.coursework.models.Forms;

import java.util.List;

public interface FormsRepository extends JpaRepository<Forms, Integer> {
    @Query("SELECT DISTINCT f.formName FROM Forms f JOIN f.medicines me JOIN me.appointments ap WHERE ap.prescription.id = :prescriptionId")
    List<String> findFormNamesByPrescriptionId(@Param("prescriptionId") Long prescriptionId);
}

