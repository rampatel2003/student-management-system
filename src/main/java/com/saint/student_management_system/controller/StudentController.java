package com.saint.student_management_system.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class StudentController {

    @GetMapping("/")
    public String home() {

        System.out.println(">>> HOME METHOD EXECUTED <<<");
        return "home/dashboard";
    }

    @GetMapping("/students")
    public String students() {
        return "student/student-list";
    }
}