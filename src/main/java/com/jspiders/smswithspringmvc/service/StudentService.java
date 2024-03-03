package com.jspiders.smswithspringmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.smswithspringmvc.pojo.StudentPojo;
import com.jspiders.smswithspringmvc.repository.StudentRepository;

@Component
public class StudentService {

	@Autowired
	private StudentRepository studentRepository;

	public void addStudent(String name, String email, long mobile, byte age) {
		StudentPojo studentPojo = new StudentPojo();
		studentPojo.setName(name);
		studentPojo.setEmail(email);
		studentPojo.setMobile(mobile);
		studentPojo.setAge(age);
		studentRepository.addStudent(studentPojo);
	}
	
	public List<StudentPojo> getAllStudents(){
		return studentRepository.getAllStudents();
	}

	public String deleteStudent(long id) {
		StudentPojo studentToBeDeleted = null;
		List<StudentPojo> students = studentRepository.getAllStudents();
		for (StudentPojo student : students) {
			if (student.getId() == id) {
				studentToBeDeleted = student;
				break;
			}
		}
		if (studentToBeDeleted == null) {
			return "Student not found.";
		} else {
			studentRepository.deleteStudent(studentToBeDeleted);
			return "Student deleted.";
		}
	}
	
	public StudentPojo editStudent(long id) {
		StudentPojo studentToBeUpdated = null;
		List<StudentPojo> students = studentRepository.getAllStudents();
		for (StudentPojo student : students) {
			if (student.getId() == id) {
				studentToBeUpdated = student;
				break;
			}
		}
		return studentToBeUpdated;
	}

	public void updateStudent(long id, String name, String email, long mobile, byte age) {
		StudentPojo studentPOJO = studentRepository.getStudentById(id);
		studentPOJO.setName(name);
		studentPOJO.setEmail(email);
		studentPOJO.setMobile(mobile);
		studentPOJO.setAge(age);
		studentRepository.addStudent(studentPOJO);

	}
	
	public List<StudentPojo> searchStudentByPattern(String pattern) {
		return studentRepository.searchStudentByPattern(pattern);
	}


}
