package com.hunter.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hunter.entity.ChiTietSanPham;
import com.hunter.entity.MauSanPham;
import com.hunter.entity.SizeSanPham;


@Repository
public class ChiTietSanPhamDAO {

	@Autowired
	private EntityManagerFactory entityManagerFactory;

	@Transactional
	public void themMauMoi(MauSanPham mau) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.persist(mau);
		entityManager.getTransaction().commit();
	}

	@Transactional
	public void themSizeMoi(SizeSanPham size) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		entityManager.persist(size);
		entityManager.getTransaction().commit();
	}

	@Transactional
	public List<MauSanPham> getToanBoMau() {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		List<MauSanPham> mauSanPhams = entityManager.createQuery("From MauSanPham",MauSanPham.class).getResultList();
		entityManager.getTransaction().commit();
		return mauSanPhams;
	}

	@Transactional
	public List<SizeSanPham> getToanBoSize() {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		List<SizeSanPham> sizeSanPhams = entityManager.createQuery("From SizeSanPham",SizeSanPham.class).getResultList();
		entityManager.getTransaction().commit();
		return sizeSanPhams;
	}
	
	@Transactional
	public void themChiTietSanPham(int soLuong,String ngayNhap,int sanPhamID,int sizeSanPhamID,int mauSanPhamID) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		Query query = entityManager.createNativeQuery(
				"INSERT INTO ChiTietSanPham (SoLuong, NgayNhap, sanpham_ID, sizesanpham_ID, mausanpham_ID) "
				+ "VALUES (?, ?, ?, ?,?)");
		query.setParameter(1, soLuong)
				.setParameter(2, ngayNhap)
				.setParameter(3, sanPhamID)
				.setParameter(4, sizeSanPhamID)
				.setParameter(5, mauSanPhamID)
				.executeUpdate();
		entityManager.getTransaction().commit();
	}
	
	@Transactional
	public void xoaChiTiet(int id) {
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		entityManager.getTransaction().begin();
		ChiTietSanPham chitiet = entityManager.find(ChiTietSanPham.class, id);
		entityManager.remove(chitiet);
		entityManager.getTransaction().commit();
	}
}
