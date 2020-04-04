create schema `shopping` character set utf8 collate utf8_general_ci;
use `shopping`;

CREATE TABLE CHUCVU (
	ID integer auto_increment,
    TenChucVu nvarchar(30),
    primary key(ID)
);

CREATE TABLE NHANVIEN (
	ID integer auto_increment,
    HoTen nvarchar(30),
    DiaChi nvarchar(200),
    GioiTinh tinyint,
    CMND char(14),
    Email varchar(50),
    TenDangNhap varchar(50),
    MatKhau varchar(50),
    primary key (ID)
);
CREATE TABLE DANHMUCSANPHAM (
	ID integer auto_increment,
    TenDanhMuc nvarchar(100),
    HinhAnhDanhMuc text,
    primary key (ID)
);
CREATE TABLE SANPHAM (
	ID integer auto_increment,
    TenSanPham nvarchar(100),
    GiaTien nvarchar(50),
    MoTa text,
    HinhSanPham text,
    primary key (ID)
);
CREATE TABLE MAUSANPHAM(
	ID integer auto_increment,
    TenMau nvarchar(50),
    primary key(ID)
);
CREATE TABLE SIZESANPHAM (
	ID integer auto_increment,
    size nvarchar(20),
    primary key(ID)
);
CREATE TABLE CHITIETSANPHAM(
	ID integer auto_increment,
    SoLong integer,
    NgayNhap varchar(50),
    primary key(ID)
);
CREATE TABLE KHUYENMAI(
	ID integer auto_increment,
    TenKhuyenMai nvarchar(200),
    ThoiGianBatDau nvarchar(50),
    ThoiGianKetThuc nvarchar(50),
    MoTa text,
    HinhKhuyenMai text,
    primary key(ID)
);
CREATE TABLE CHITIETKHUYENMAI(
	GiamGia integer
);
CREATE TABLE HOADON(
	ID integer auto_increment,
    TenKhachHang nvarchar(100),
    SDT char(12),
    DiaChiGiaoHang nvarchar(200),
    TinhTrang tinyint,
    NgayLap varchar(50),
    primary key(ID)
);
CREATE TABLE CHITIETHOADON(
    SoLuong integer,
    GiaTien varchar(100)
);


