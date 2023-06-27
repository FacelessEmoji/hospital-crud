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
@Table(name = "visits")
public class Visits {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "visitid")
    private int id;

    @ManyToOne
    @JoinColumn(name = "patientid")
    private Patients patient;

    @ManyToOne
    @JoinColumn(name = "doctorid")
    private Doctors doctor;

    @ManyToOne
    @JoinColumn(name = "diagnosisid")
    private Diagnoses diagnosis;

    @Column(name = "visitdate")
    @Temporal(TemporalType.DATE)
    private Date visitDate;

    @Column(name = "reason", columnDefinition = "text")
    private String reason;

    @OneToMany(mappedBy = "visit")
    private List<Prescriptions> prescriptions;

    // Getters and Setters
}

