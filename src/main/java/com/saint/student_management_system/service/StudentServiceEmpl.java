package com.saint.student_management_system.service;

import com.saint.student_management_system.entity.Student;
import com.saint.student_management_system.entity.StudentStatus;
import com.saint.student_management_system.exception.DuplicateStudentException;
import com.saint.student_management_system.exception.StudentNotFoundException;
import com.saint.student_management_system.repository.StudentRepository;
import org.springframework.transaction.annotation.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class StudentServiceEmpl implements StudentService{

    private final StudentRepository studentRepo;

    @Transactional
    public Student createStudent(Student student) {
        if (studentRepo.existsByEmail(student.getEmail())) {
            throw new DuplicateStudentException(
                    "A student with email " + student.getEmail() + " already exists");
        }
        if (studentRepo.existsByEnrollmentNumber(student.getEnrollmentNumber())) {
            throw new DuplicateStudentException(
                    "A student with enrollment number " + student.getEnrollmentNumber() + " already exists");
        }
        if (student.getStatus() == null) {
            student.setStatus(StudentStatus.ACTIVE);
        }
        return studentRepo.save(student);
    }

    @Transactional
    public Student updateStudent(Long  id, Student updatedData) {

        Student existing = studentRepo.findById(id)
                .orElseThrow(() -> new StudentNotFoundException("Student not found with id: " + id));

        existing.setFirstName(updatedData.getFirstName());
        existing.setMiddleName(updatedData.getMiddleName());
        existing.setLastName(updatedData.getLastName());
        existing.setDateOfBirth(updatedData.getDateOfBirth());
        existing.setGender(updatedData.getGender());
        existing.setPhoneNumber(updatedData.getPhoneNumber());
        existing.setBloodGroup(updatedData.getBloodGroup());
        existing.setNationality(updatedData.getNationality());
        existing.setAddressLine(updatedData.getAddressLine());
        existing.setCity(updatedData.getCity());
        existing.setState(updatedData.getState());
        existing.setPostalCode(updatedData.getPostalCode());
        existing.setCountry(updatedData.getCountry());
        existing.setGuardianName(updatedData.getGuardianName());
        existing.setGuardianPhone(updatedData.getGuardianPhone());
        existing.setGuardianRelation(updatedData.getGuardianRelation());
        existing.setDepartment(updatedData.getDepartment());
        existing.setCourse(updatedData.getCourse());
        existing.setBatchYear(updatedData.getBatchYear());
        existing.setAdmissionDate(updatedData.getAdmissionDate());
        existing.setStatus(updatedData.getStatus());

        return studentRepo.save(existing);
    }

    @Transactional(readOnly = true)
    public Student getStudentById(Long id) {
        return studentRepo.findById(id)
                .orElseThrow(() -> new StudentNotFoundException("Student not found with id: " + id));

    }

    @Transactional(readOnly = true)
    public List<Student> getAllStudents() {
        return studentRepo.findAll();
    }

    @Transactional
    public void deleteStudent(Long id) {
        if (!studentRepo.existsById(id)) {
            throw new StudentNotFoundException("Student not found with id: " + id);
        }
        studentRepo.deleteById(id);
    }
}
