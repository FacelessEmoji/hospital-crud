package rut.miit.coursework.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import rut.miit.coursework.models.People;

import java.util.List;


public interface PeopleRepository extends JpaRepository<People, Integer> {
    @Query(value = "SELECT " +
            "CASE " +
            "WHEN p.personid = d.personid THEN CONCAT('Doctor: ', 'License Number = ', d.licensenumber, ', Salary = ', d.salary, ', Specialization = ', s.specializationname, ', Hospital Name = ', h.hospitalname, ', Contact ID = ', p.contactid) " +
            "WHEN p.personid = pa.personid THEN CONCAT('Patient: ', 'Insurance Number = ', pa.insurancenumber, ', Hospital Name = ', h.hospitalname, ', Contact ID = ', p.contactid) " +
            "ELSE 'Person is not a patient or a doctor yet.' " +
            "END " +
            "FROM People p " +
            "LEFT JOIN Doctors d ON p.personid = d.personid " +
            "LEFT JOIN Specializations s ON d.specializationid = s.specializationid " +
            "LEFT JOIN Patients pa ON p.personid = pa.personid " +
            "LEFT JOIN Hospitals h ON (d.hospitalid = h.hospitalid OR pa.hospitalid = h.hospitalid) " +
            "WHERE p.personid = :personId", nativeQuery = true)
    String findPersonDetails(@Param("personId") Integer personId);

    @Query("SELECT pe.lastName, pe.firstName, d.licenseNumber FROM People pe " +
            "JOIN pe.patient ps " +
            "JOIN ps.visits v " +
            "JOIN v.doctor d " +
            "JOIN v.diagnosis dg " +
            "WHERE dg.diagnosisName = :diagnosisName " +
            "ORDER BY pe.lastName")
    List<Object[]> findPatientsAndDoctorsByDiagnosis(@Param("diagnosisName") String diagnosisName);
}
