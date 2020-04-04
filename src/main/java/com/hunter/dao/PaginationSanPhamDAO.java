package com.hunter.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hunter.entity.SanPham;

@Repository
public class PaginationSanPhamDAO {

	@Autowired
	private EntityManagerFactory entityManagerFactory;
	
	@Transactional
	public List<SanPham> sanPhamPhanTrang(int page) {
		EntityManager entityManager  = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		List<SanPham> sanPhams = entityManager.createQuery("From SanPham",SanPham.class)
												.setFirstResult(page)
												.setMaxResults(5)
												.getResultList();
		entityManager.getTransaction().commit();
		return sanPhams;
	}
}
