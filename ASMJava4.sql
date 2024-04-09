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
VALUES
    (1, N'Nguyễn Văn A', N'nguyenvana@example.com', N'0987654321', N'Hà Nội'),
    (2, N'Trần Thị B', N'tranthib@example.com', N'0123456789', N'Hồ Chí Minh'),
    (3, N'Lê Văn C', N'levanc@example.com', N'0909090909', N'Đà Nẵng'),
    (4, N'Phạm Thị G', N'phamthig@example.com', N'0333333333', N'Hải Phòng'),
    (5, N'Vũ Văn H', N'vuvanh@example.com', N'0555555555', N'Đà Lạt'),
    (6, N'Trần Thị K', N'tranthik@example.com', N'0666666666', N'Nha Trang'),
    (7, N'Nguyễn Thị L', N'nguyenthil@example.com', N'0777777777', N'Quảng Ninh'),
    (8, N'Hoàng Văn M', N'hoangvanm@example.com', N'0888888888', N'Thái Bình'),
    (9, N'Bùi Thị N', N'buithin@example.com', N'0999999999', N'Bắc Ninh'),
    (10, N'Mai Văn P', N'maivanp@example.com', N'0111111111', N'Hải Dương'),
    (11, N'Đinh Thị Q', N'dinhthiq@example.com', N'0222222222', N'Thái Nguyên'),
    (12, N'Phan Văn S', N'phanvans@example.com', N'0333333333', N'Hưng Yên'),
    (13, N'Đỗ Thị T', N'dothit@example.com', N'0444444444', N'Thái Bình'),
    (14, N'Võ Văn U', N'vovanu@example.com', N'0555555555', N'Bắc Ninh');


-- Chèn dữ liệu vào bảng SanPham
INSERT INTO SanPham (MaSanPham, TenSanPham, MoTa, Gia)
VALUES
    (1, N'Áo thun nam', N'Áo thun nam dài tay', 150000),
    (2, N'Quần jeans nữ', N'Quần jeans nữ đẹp', 250000),
    (3, N'Giày sneakers', N'Giày thể thao nam nữ', 300000),
    (4, N'Áo nữ thời trang', N'Áo nữ thời trang cao cấp', 500000),
    (5, N'Quần nam công sở', N'Quần nam dành cho công sở', 700000),
    (6, N'Áo khoác nam', N'Áo khoác nam thời trang', 800000),
    (7, N'Áo dài nữ', N'Áo dài nữ phong cách Hàn Quốc', 600000),
    (8, N'Quần short nam', N'Quần short nam thể thao', 350000),
    (9, N'Giày thể thao nữ', N'Giày thể thao nữ màu pastel', 400000),
    (10, N'Váy nữ dạo phố', N'Váy nữ dạo phố cao cấp', 600000),
    (11, N'Áo len nam', N'Áo len nam hàng hiệu', 450000),
    (12, N'Áo dài nữ', N'Áo dài nữ thêu hoa', 550000);


-- Chèn dữ liệu vào bảng DonHang
INSERT INTO DonHang (MaDonHang, MaKhachHang, NgayDatHang, TongTien)
VALUES
    (1, 1, '2024-03-25', 300000),
    (2, 2, '2024-03-26', 550000),
    (3, 3, '2024-03-27', 600000),
    (4, 4, '2024-04-01', 800000),
    (5, 5, '2024-04-02', 600000),
    (6, 6, '2024-04-03', 700000),
    (7, 7, '2024-04-04', 450000),
    (8, 8, '2024-04-05', 300000),
    (9, 9, '2024-04-06', 700000),
    (10, 10, '2024-04-07', 650000),
    (11, 11, '2024-04-08', 900000),
    (12, 12, '2024-04-09', 750000);


-- Chèn dữ liệu vào bảng ChiTietDonHang
INSERT INTO ChiTietDonHang (MaChiTietDonHang, MaDonHang, MaSanPham, SoLuong, DonGia)
VALUES
    (1, 1, 1, 2, 300000),
    (2, 2, 2, 1, 250000),
    (3, 2, 3, 1, 300000),
    (4, 3, 1, 3, 450000),
    (5, 3, 3, 2, 600000),
    (6, 4, 4, 2, 1000000),
    (7, 4, 5, 1, 700000),
    (8, 5, 6, 3, 2400000),
    (9, 5, 7, 2, 800000),
    (10, 6, 8, 2, 700000),
    (11, 6, 9, 1, 400000),
    (12, 7, 10, 1, 600000),
    (13, 7, 11, 2, 900000),
    (14, 8, 12, 2, 1100000),
    (15, 8, 1, 1, 150000),
    (16, 9, 2, 2, 500000),
    (17, 9, 3, 1, 300000),
    (18, 10, 4, 2, 1000000),
    (19, 10, 5, 1, 700000),
    (20, 11, 6, 3, 2400000),
    (21, 11, 7, 2, 800000),
    (22, 12, 8, 2, 700000),
    (23, 12, 9, 1, 400000);


-- Chèn dữ liệu vào bảng NhanVien
INSERT INTO NhanVien (MaNhanVien, TenNhanVien, Email, DienThoai, ChucVu)
VALUES
    (1, N'Nguyễn Thị D', N'nguyenthid@example.com', N'0988888888', N'Nhân viên bán hàng'),
    (2, N'Lê Văn E', N'levane@example.com', N'0977777777', N'Quản lý'),
    (3, N'Trần Văn F', N'tranvanf@example.com', N'0966666666', N'Kế toán'),
    (4, N'Nguyễn Thị I', N'nguyenthii@example.com', N'0888888888', N'Kế toán'),
    (5, N'Lê Văn K', N'levank@example.com', N'0999999999', N'Nhân viên bán hàng'),
    (6, N'Trần Thị L', N'tranthil@example.com', N'0222222222', N'Kế toán'),
    (7, N'Đặng Văn M', N'dangvanm@example.com', N'0555555555', N'Quản lý'),
    (8, N'Phan Thị N', N'phanthin@example.com', N'0333333333', N'Kế toán'),
    (9, N'Vũ Văn O', N'vuvano@example.com', N'0111111111', N'Nhân viên bán hàng'),
    (10, N'Hà Thị P', N'hathip@example.com', N'0777777777', N'Quản lý'),
    (11, N'Trần Văn Q', N'tranvanq@example.com', N'0666666666', N'Nhân viên bán hàng'),
    (12, N'Đỗ Thị S', N'dothis@example.com', N'0999999999', N'Kế toán'),
    (13, N'Nguyễn Văn T', N'nguyenvant@example.com', N'0444444444', N'Quản lý'),
    (14, N'Lê Thị U', N'lethiu@example.com', N'0333333333', N'Nhân viên bán hàng');


-- Chèn dữ liệu vào bảng ThanhToan
INSERT INTO ThanhToan (MaThanhToan, MaDonHang, NgayThanhToan, PhuongThucThanhToan, SoTienThanhToan)
VALUES
    (1, 1, '2024-03-25', N'Thanh toán khi nhận hàng', 300000),
    (2, 2, '2024-03-26', N'Thanh toán qua ví điện tử', 550000),
    (3, 3, '2024-03-27', N'Thanh toán bằng thẻ ngân hàng', 600000),
    (4, 4, '2024-04-01', N'Thanh toán bằng thẻ tín dụng', 800000),
    (5, 5, '2024-04-02', N'Thanh toán qua chuyển khoản', 600000),
    (6, 6, '2024-04-03', N'Thanh toán bằng tiền mặt', 700000),
    (7, 7, '2024-04-04', N'Thanh toán khi nhận hàng', 450000),
    (8, 8, '2024-04-05', N'Thanh toán qua chuyển khoản', 300000),
    (9, 9, '2024-04-06', N'Thanh toán bằng thẻ ngân hàng', 700000),
    (10, 10, '2024-04-07', N'Thanh toán khi nhận hàng', 650000),
    (11, 11, '2024-04-08', N'Thanh toán qua ví điện tử', 900000),
    (12, 12, '2024-04-09', N'Thanh toán qua chuyển khoản', 750000);

select *
from DonHang;
