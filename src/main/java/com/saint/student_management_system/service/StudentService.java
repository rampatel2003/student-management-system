package com.saint.student_management_system.service;

import com.saint.student_management_system.entity.Student;

import java.util.List;

public interface StudentService {

    Student createStudent(Student student);
    Student updateStudent(Long id,Student student);
    Student getStudentById(Long id);
    List<Student> getAllStudents();
    void deleteStudent(Long id);
}
