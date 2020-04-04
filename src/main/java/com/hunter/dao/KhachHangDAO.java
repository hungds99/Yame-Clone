package com.hunter.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hunter.entity.DonHang;
import com.hunter.entity.KhachHang;

@Repository
public class KhachHangDAO {

	@Autowired
	private EntityManagerFactory entityManagerFactory;
	
	@Transactional
	public int saveKhachHang(KhachHang khachHang) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.persist(khachHang);
		entityManager.getTransaction().commit();
		return khachHang.getID();		
	}
	
	@Transactional
	public void saveDonHang(DonHang donHang) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.persist(donHang);
		entityManager.getTransaction().commit();
	}
}
