-- Tạo cơ sở dữ liệu
CREATE DATABASE ASM;
GO

-- Sử dụng cơ sở dữ liệu QuanLyBanHang
USE ASM;
GO

-- Tạo bảng KhachHang
CREATE TABLE KhachHang (
    MaKhachHang INT PRIMARY KEY,
    TenKhachHang NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100),
    DienThoai NVARCHAR(20),
    DiaChi NVARCHAR(255)
);
GO

-- Tạo bảng SanPham
CREATE TABLE SanPham (
    MaSanPham INT PRIMARY KEY,
    TenSanPham NVARCHAR(100) NOT NULL,
    MoTa NVARCHAR(MAX),
    Gia DECIMAL(10,2) NOT NULL
);
GO

-- Tạo bảng DonHang
CREATE TABLE DonHang (
    MaDonHang INT PRIMARY KEY,
    MaKhachHang INT,
    NgayDatHang DATE,
    TongTien DECIMAL(10,2),
    FOREIGN KEY (MaKhachHang) REFERENCES KhachHang(MaKhachHang)
);
GO

-- Tạo bảng ChiTietDonHang
CREATE TABLE ChiTietDonHang (
    MaChiTietDonHang INT PRIMARY KEY,
    MaDonHang INT,
    MaSanPham INT,
    SoLuong INT,
    DonGia DECIMAL(10,2),
    FOREIGN KEY (MaDonHang) REFERENCES DonHang(MaDonHang),
    FOREIGN KEY (MaSanPham) REFERENCES SanPham(MaSanPham)
);
GO

-- Tạo bảng NhanVien
CREATE TABLE NhanVien (
    MaNhanVien INT PRIMARY KEY,
    TenNhanVien NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100),
    DienThoai NVARCHAR(20),
    ChucVu NVARCHAR(50)
);
GO

-- Tạo bảng ThanhToan
CREATE TABLE ThanhToan (
    MaThanhToan INT PRIMARY KEY,
    MaDonHang INT,
    NgayThanhToan DATE,
    PhuongThucThanhToan NVARCHAR(50),
    SoTienThanhToan DECIMAL(10,2),
    FOREIGN KEY (MaDonHang) REFERENCES DonHang(MaDonHang)
);
GO

INSERT INTO KhachHang (MaKhachHang, TenKhachHang, Email, DienThoai, DiaChi)
VALUES (1, N'Nguyễn Văn A', N'nguyenvana@example.com', N'0987654321', N'Hà Nội'),
       (2, N'Trần Thị B', N'tranthib@example.com', N'0123456789', N'Hồ Chí Minh'),
       (3, N'Lê Văn C', N'levanc@example.com', N'0909090909', N'Đà Nẵng');

-- Chèn dữ liệu vào bảng SanPham
INSERT INTO SanPham (MaSanPham, TenSanPham, MoTa, Gia)
VALUES (1, N'Áo thun nam', N'Áo thun nam dài tay', 150000),
       (2, N'Quần jeans nữ', N'Quần jeans nữ đẹp', 250000),
       (3, N'Giày sneakers', N'Giày thể thao nam nữ', 300000);

-- Chèn dữ liệu vào bảng DonHang
INSERT INTO DonHang (MaDonHang, MaKhachHang, NgayDatHang, TongTien)
VALUES (1, 1, '2024-03-25', 300000),
       (2, 2, '2024-03-26', 550000),
       (3, 3, '2024-03-27', 600000);

-- Chèn dữ liệu vào bảng ChiTietDonHang
INSERT INTO ChiTietDonHang (MaChiTietDonHang, MaDonHang, MaSanPham, SoLuong, DonGia)
VALUES (1, 1, 1, 2, 300000),
       (2, 2, 2, 1, 250000),
       (3, 2, 3, 1, 300000),
       (4, 3, 1, 3, 450000),
       (5, 3, 3, 2, 600000);

-- Chèn dữ liệu vào bảng NhanVien
INSERT INTO NhanVien (MaNhanVien, TenNhanVien, Email, DienThoai, ChucVu)
VALUES (1, N'Nguyễn Thị D', N'nguyenthid@example.com', N'0988888888', N'Nhân viên bán hàng'),
       (2, N'Lê Văn E', N'levane@example.com', N'0977777777', N'Quản lý'),
       (3, N'Trần Văn F', N'tranvanf@example.com', N'0966666666', N'Kế toán');

-- Chèn dữ liệu vào bảng ThanhToan
INSERT INTO ThanhToan (MaThanhToan, MaDonHang, NgayThanhToan, PhuongThucThanhToan, SoTienThanhToan)
VALUES (1, 1, '2024-03-25', N'Thanh toán khi nhận hàng', 300000),
       (2, 2, '2024-03-26', N'Thanh toán qua ví điện tử', 550000),
       (3, 3, '2024-03-27', N'Thanh toán bằng thẻ ngân hàng', 600000);