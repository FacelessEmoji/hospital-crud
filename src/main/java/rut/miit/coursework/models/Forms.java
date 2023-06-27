package rut.miit.coursework.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Setter
@Getter
@NoArgsConstructor
@Entity
@Table(name = "forms")
public class Forms {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "formid")
    private int id;

    @Column(name = "formname",columnDefinition = "varchar(50)")
    private String formName;

    @OneToMany(mappedBy = "form")
    private List<Medicines> medicines;

    // Getters and Setters
}

