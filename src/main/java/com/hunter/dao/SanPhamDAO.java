package com.hunter.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hunter.entity.SanPham;

@Repository
public class SanPhamDAO {

	@Autowired
	private EntityManagerFactory entityManagerFactory;
	
	@Transactional
	public List<SanPham> getAllSanPham() {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		List<SanPham> sanPhams = entityManager.createQuery("From SanPham",SanPham.class).getResultList();
		entityManager.close();
		return sanPhams;
	}
	
	@Transactional
	public SanPham getSanPham(int ID) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		SanPham sanPham = entityManager.createQuery("From SanPham Where ID = :ID",SanPham.class)
										.setParameter("ID", ID)
										.getSingleResult();
		entityManager.close();
		return sanPham;
	}
	
	@Transactional
	public List<SanPham> getSanPhamByDanhMuc(int ID) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		List<SanPham> sanPhams = entityManager.createQuery("From SanPham Where danhMucSanPham_ID = :ID",SanPham.class)
				.setParameter("ID", ID)
				.getResultList();
		entityManager.close();
		return sanPhams;
	}
	
	@Transactional
	public List<SanPham> getNewSanPham() {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		String jhq = "From SanPham Order By ID DESC";
		List<SanPham> sanPhams = entityManager.createQuery(jhq,SanPham.class).setMaxResults(4).getResultList();
		return sanPhams;
	}
}
