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
@Table(name = "medicines")
public class Medicines {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "medicineid")
    private int id;

    @ManyToOne
    @JoinColumn(name = "formid")
    private Forms form;

    @Column(name = "medicinename", columnDefinition = "varchar(50)")
    private String medicineName;

    @Column(name = "Description", columnDefinition = "text")
    private String description;

    @Column(name = "Contraindications", columnDefinition = "text")
    private String contraindications;

    @OneToMany(mappedBy = "medicine")
    private List<Appointments> appointments;

    // Getters and Setters
}
