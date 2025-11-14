CREATE TABLE KhachHangThanThiet (

    MaKH INT,

    HoTen VARCHAR(255),

    ThanhPho VARCHAR(100),

    TongChiTieu INT,

    SoDonHang INT,

    LanCuoiMuaHang DATE

);

 

INSERT INTO KhachHangThanThiet (MaKH, HoTen, ThanhPho, TongChiTieu, SoDonHang, LanCuoiMuaHang) VALUES

(1, 'Nguyễn Thị Mai', 'Hà Nội', 15000000, 12, '2023-10-28'),

(2, 'Trần Văn Nam', 'TP. Hồ Chí Minh', 25000000, 20, '2023-10-15'),

(3, 'Lê Minh Anh', 'Hà Nội', 3000000, 2, '2023-10-05'),

(4, 'Phạm Hồng Nhung', 'Đà Nẵng', 8000000, 8, '2023-05-20'),

(5, 'Hoàng Tuấn Kiệt', 'Hà Nội', 18000000, 15, '2023-09-30'),

(6, 'Vũ Bích Phương', 'TP. Hồ Chí Minh', 4500000, 3, '2023-04-11');
-- Danh sách khách hàng VIP (Chi tiêu > 10 triệu VÀ Đơn hàng >= 10)
SELECT *
FROM KhachHangThanThiet
WHERE TongChiTieu > 10000000 AND SoDonHang >= 10
ORDER BY TongChiTieu DESC;
-- Danh sách khách hàng mới tiềm năng ở Hà Nội
SELECT *
FROM KhachHangThanThiet
WHERE ThanhPho = 'Hà Nội' AND SoDonHang < 5 AND TongChiTieu > 2000000;
-- Danh sách khách hàng có LanCuoiMuaHang trước 2023-09-01
SELECT *
FROM KhachHangThanThiet
WHERE LanCuoiMuaHang < '2023-09-01';
-- Cập nhật ThanhPho (giả định) thành 'Khách hàng cũ' cho nhóm cần hâm nóng
UPDATE KhachHangThanThiet
SET ThanhPho = 'Khách hàng cũ'
WHERE LanCuoiMuaHang < '2023-09-01';

-- Sau khi UPDATE, nên chạy lại SELECT * FROM KhachHangThanThiet; để kiểm tra