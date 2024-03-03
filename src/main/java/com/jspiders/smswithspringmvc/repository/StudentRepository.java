package com.jspiders.smswithspringmvc.repository;

import java.io.ObjectInputFilter.Config;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
import javax.transaction.Transaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.smswithspringmvc.config.StudentConfig;
import com.jspiders.smswithspringmvc.pojo.StudentPojo;

import lombok.Data;

@Component
public class StudentRepository {

	@Autowired
	private EntityManager entityManager;

	public void addStudent(StudentPojo studentPojo) {
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(studentPojo);
		entityTransaction.commit();
	}
	
	@SuppressWarnings("unchecked")
	public List<StudentPojo> getAllStudents(){
		Query query=entityManager.createQuery("SELECT student FROM StudentPojo student");
        return query.getResultList();
	}
	
	public void deleteStudent(StudentPojo studentPOJO) {
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.remove(studentPOJO);
		entityTransaction.commit();
	}

	public StudentPojo getStudentById(long id) {
		return entityManager.find(StudentPojo.class, id);
	}
	
	@SuppressWarnings("unchecked")
	public List<StudentPojo> searchStudentByPattern(String pattern) {
		Query query = entityManager
				.createQuery("SELECT student FROM StudentPojo student WHERE name LIKE '%" + pattern + "%'");
		return query.getResultList();
	}

}
