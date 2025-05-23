package com.workintech.sqlrelations.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import jakarta.persistence.*;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "surgery")
public class Surgery {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(name = "nurse_id")
    private long nurseId;

    @Column(name = "patient_id")
    private long patientId;

    @Column(name = "doctor_id")
    private long doctorId;
    
    @ManyToOne
    @JoinColumn(name = "doctor_id", insertable = false, updatable = false)
    private Doctor doctor;
    
    @ManyToOne
    @JoinColumn(name = "nurse_id", insertable = false, updatable = false)
    private Nurse nurse;
    
    @ManyToOne
    @JoinColumn(name = "patient_id", insertable = false, updatable = false)
    private Patient patient;
}
