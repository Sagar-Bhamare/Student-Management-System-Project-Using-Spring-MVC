package com.jspiders.smswithspringmvc.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.smswithspringmvc.pojo.AdminPojo1;


@Component
public class AdminRepository {

	@Autowired
	private EntityManager entityManager;
	
	public void addAdmin(AdminPojo1 adminPojo1) {

		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(adminPojo1);
		entityTransaction.commit();
	}
	
	@SuppressWarnings("unchecked")
	public List<AdminPojo1> getAllAdmins() {
		Query query=entityManager.createQuery("SELECT admin FROM AdminPojo1 admin");
		return query.getResultList();
	}

	public void deleteAdmin(AdminPojo1 adminToBeDeleted) {
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.remove(adminToBeDeleted);
		entityTransaction.commit();
	}
}
