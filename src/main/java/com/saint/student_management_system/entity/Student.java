package com.saint.student_management_system.entity;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name = "students")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // Personal Data
    @Column(nullable = false, length = 50)
    private String firstName;
    @Column(length = 50)
    private String middleName;
    @Column(nullable = false, length = 50)
    private String lastName;
    @Column(nullable = false)
    private LocalDate dateOfBirth;
    private String gender;
    @Column(unique = true, nullable = false)
    private String email;
    private String phoneNumber;
    private String bloodGroup;
    private String nationality;

    // Guardian
    private String guardianName;
    private String guardianPhone;
    private String guardianRelation;

    // Address
    private String addressLine;
    private String city;
    private String state;
    private String postalCode;
    private String country;



    // Organizational data
    @Column(unique = true, nullable = false)
    private String enrollmentNumber;
    private String department;
    private String course;
    private Integer batchYear;
    private LocalDate admissionDate;
    @Enumerated(EnumType.STRING)
    private StudentStatus status;

    // Metadata
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    @PrePersist
    protected void onCreate() {
        createdAt = LocalDateTime.now();
        updatedAt = LocalDateTime.now();
    }

    @PreUpdate
    protected void onUpdate() {
        updatedAt = LocalDateTime.now();
    }
}
