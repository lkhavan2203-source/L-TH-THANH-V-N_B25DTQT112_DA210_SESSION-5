CREATE TABLE SanPham (

    MaSP VARCHAR(10),

    TenSP VARCHAR(255),

    DanhMuc VARCHAR(100),

    SoLuongTon INT,

    NhaCungCap VARCHAR(100),

    NgayNhapKho DATE,

    TrangThai VARCHAR(50)

);

 

INSERT INTO SanPham (MaSP, TenSP, DanhMuc, SoLuongTon, NhaCungCap, NgayNhapKho, TrangThai) VALUES

('DB001', 'Nồi chiên không dầu', 'Đồ bếp', 25, 'Sunhouse Group', '2023-03-15', 'Bán chạy'),

('DD002', 'Máy sấy tóc', 'Điện gia dụng', 50, 'Philips VN', '2023-09-05', 'Hàng mới'),

('DB003', 'Bộ dao làm bếp', 'Đồ bếp', 15, 'Elmich', '2023-02-20', 'Bán chạy'),

('TT004', 'Bàn ủi hơi nước', 'Thiết bị tiện ích', 30, 'Philips VN', '2023-08-10', 'Bán chạy'),

('DB005', 'Máy xay sinh tố', 'Đồ bếp', 8, 'Sunhouse Group', '2023-04-01', 'Tồn kho');
-- Sửa tên nhà cung cấp từ 'Sunhouse Group' thành 'Tập đoàn Sunhouse'
UPDATE SanPham
SET NhaCungCap = 'Tập đoàn Sunhouse'
WHERE NhaCungCap = 'Sunhouse Group';
-- Tìm sản phẩm 'Đồ bếp' VÀ nhập kho trước 2023-05-01
SELECT MaSP, TenSP, NgayNhapKho, TrangThai
FROM SanPham
WHERE DanhMuc = 'Đồ bếp' AND NgayNhapKho < '2023-05-01';
-- Cập nhật TrangThai thành 'Xả hàng tồn kho' cho nhóm đã xác định
UPDATE SanPham
SET TrangThai = 'Xả hàng tồn kho'
WHERE DanhMuc = 'Đồ bếp' AND NgayNhapKho < '2023-05-01';
-- Lập báo cáo cuối cùng: Xả hàng HOẶC Tồn kho dưới 10
SELECT MaSP, TenSP, SoLuongTon, TrangThai
FROM SanPham
WHERE TrangThai = 'Xả hàng tồn kho' OR SoLuongTon < 10
ORDER BY SoLuongTon ASC;