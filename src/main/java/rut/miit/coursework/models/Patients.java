package rut.miit.coursework.models;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import jakarta.persistence.*;
import java.util.List;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "patients")
public class Patients {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "patientid")
    private int id;

    @ManyToOne
    @JoinColumn(name = "hospitalid")
    private Hospitals hospital;

    @OneToOne
    @JoinColumn(name = "personid")
    private People person;

    @Column(name = "insurancenumber", columnDefinition = "varchar(20)")
    private String insuranceNumber;

    @OneToMany(mappedBy = "patient")
    private List<Visits> visits;

    @OneToMany(mappedBy = "patient")
    private List<Prescriptions> prescriptions;

    // Getters and Setters
}

