package rut.miit.coursework.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import rut.miit.coursework.models.Contacts;

import java.util.List;

public interface ContactsRepository extends JpaRepository<Contacts, Integer> {
    @Query("SELECT co.phone FROM Contacts co JOIN co.people pe JOIN pe.patient ps WHERE ps.insuranceNumber = :insuranceNumber")
    List<String> findPhoneByInsuranceNumber(@Param("insuranceNumber") String insuranceNumber);
}
