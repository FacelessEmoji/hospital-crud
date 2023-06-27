package rut.miit.coursework.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import rut.miit.coursework.models.Appointments;

public interface AppointmentsRepository extends JpaRepository<Appointments, Integer> {
}
