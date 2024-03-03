package com.jspiders.smswithspringmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jspiders.smswithspringmvc.pojo.AdminPojo1;
import com.jspiders.smswithspringmvc.repository.AdminRepository;

@Component

public class AdminService {

	@Autowired
	private AdminRepository adminRepository;
	
	public void addAdmin(String userName, String email, String password) {
		AdminPojo1 adminPojo1 = new AdminPojo1();
		adminPojo1.setUserName(userName);
		adminPojo1.setPassword(password);
		adminPojo1.setEmail(email);
		adminRepository.addAdmin(adminPojo1);
	}
	
	public AdminPojo1 logIn(String email,String password) {
		AdminPojo1 adminToBeLoggedIn = null;
		List<AdminPojo1> admins = adminRepository.getAllAdmins();
		for (AdminPojo1 admin : admins) {
			if (admin.getEmail().equals(email) && admin.getPassword().equals(password)) {
				adminToBeLoggedIn = admin;
				break;
			}
		}
		return adminToBeLoggedIn;
	}
	
	public List<AdminPojo1> getAllAdmins() {
		return adminRepository.getAllAdmins();
	}
	public void deleteAdmin(String email) {
		AdminPojo1 adminToBeDeleted = null;
		List<AdminPojo1> admins = adminRepository.getAllAdmins();
		for (AdminPojo1 admin : admins) {
			if (admin.getEmail().equals(email)) {
				adminToBeDeleted = admin;
			}
		}
		adminRepository.deleteAdmin(adminToBeDeleted);
	}

}
