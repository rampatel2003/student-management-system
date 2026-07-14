package com.saint.student_management_system.repository;

import com.saint.student_management_system.entity.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {


    Optional<Student> findByEnrollmentNumber(String enrollmentNumber);
    Optional<Student> findByEmail(String email);
    List<Student> findByDepartment(String department);
    List<Student> findByStatus(String status);
    boolean existsByEmail(String email);
    boolean existsByEnrollmentNumber(String enrollmentNumber);
}
