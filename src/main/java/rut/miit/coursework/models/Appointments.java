package rut.miit.coursework.models;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import jakarta.persistence.*;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "appointments")
public class Appointments {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "appointmentid")
    private int id;

    @ManyToOne
    @JoinColumn(name = "prescriptionid")
    private Prescriptions prescription;

    @ManyToOne
    @JoinColumn(name = "medicineid")
    private Medicines medicine;

    // Getters and Setters
}


