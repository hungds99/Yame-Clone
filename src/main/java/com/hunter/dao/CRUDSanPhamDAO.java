package com.hunter.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hunter.dto.SanPhamDTO;
import com.hunter.entity.SanPham;

@Repository
public class CRUDSanPhamDAO {

	@Autowired
	private EntityManagerFactory entityManagerFactory;

	@Transactional
	public void saveSanPhamMoi(int danhMuc_ID, SanPham sanPham) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		Query sql = entityManager.createNativeQuery(
				"Insert into SanPham (tenSanPham,giaTien,moTa,danhMucSanPham_ID,hinhSanPham) values (?, ?, ?, ?, ?)");
		sql.setParameter(1, sanPham.getTenSanPham()).setParameter(2, sanPham.getGiaTien())
				.setParameter(3, sanPham.getMoTa()).setParameter(4, danhMuc_ID)
				.setParameter(5, sanPham.getHinhSanPham()).executeUpdate();
		entityManager.getTransaction().commit();
	}

	@Transactional
	public SanPham laysanphambyid(int parseInt) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		SanPham sanPham = entityManager.find(SanPham.class, parseInt);
		entityManager.getTransaction().commit();
		return sanPham;
	}

	@Transactional
	public void capnhatsanpham(SanPhamDTO dto) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		SanPham sanpham = entityManager.find(SanPham.class, dto.getID());
		sanpham.setTenSanPham(dto.getTenSanPham());
		sanpham.setGiaTien(dto.getGiaTien());
		sanpham.setMoTa(dto.getMoTa());
		entityManager.getTransaction().commit();
	}

	@Transactional
	public void xoaSanPham(int iD) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		SanPham sanpham = entityManager.find(SanPham.class, iD);
		entityManager.remove(sanpham);
		entityManager.getTransaction().commit();
	}

	@Transactional
	public List<SanPham> timKiemSanPham(String tenTimKiem) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		List<SanPham> sanPhams = entityManager
				.createQuery("FROM SanPham WHERE tenSanPham LIKE CONCAT('%',:tenSanPham,'%')", SanPham.class)
				.setParameter("tenSanPham", tenTimKiem)
				.getResultList();
		entityManager.getTransaction().commit();
		return sanPhams;
	}
}
