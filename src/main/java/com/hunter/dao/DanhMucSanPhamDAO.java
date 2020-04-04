package com.hunter.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hunter.entity.DanhMucSanPham;

@Repository
public class DanhMucSanPhamDAO {

	@Autowired
	private EntityManagerFactory entityManagerFactory;

	@Transactional
	public List<DanhMucSanPham> getAllDanhMuc() {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		List<DanhMucSanPham> danhMucSanPhams = entityManager.createQuery("From DanhMucSanPham", DanhMucSanPham.class).getResultList();
		entityManager.close();
		return danhMucSanPhams;
	}
	
}
