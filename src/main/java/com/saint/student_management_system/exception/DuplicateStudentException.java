package com.saint.student_management_system.exception;

public class DuplicateStudentException extends RuntimeException{

    public DuplicateStudentException(String message) {
        super(message);
    }
}
