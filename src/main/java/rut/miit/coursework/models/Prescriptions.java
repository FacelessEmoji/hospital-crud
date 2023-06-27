package rut.miit.coursework.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Date;
import java.util.List;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "prescriptions")
public class Prescriptions {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "prescriptionid")
    private int id;

    @ManyToOne
    @JoinColumn(name = "visitid")
    private Visits visit;

    @ManyToOne
    @JoinColumn(name = "patientid")
    private Patients patient;

    @ManyToOne
    @JoinColumn(name = "doctorid")
    private Doctors doctor;

    @Column(name = "datecreated")
    @Temporal(TemporalType.DATE)
    private Date dateCreated;

    @OneToMany(mappedBy = "prescription")
    private List<Appointments> appointments;

    // Getters and Setters
}
