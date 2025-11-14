CREATE TABLE Sach (

    MaSach VARCHAR(10),

    TenSach VARCHAR(255),

    TacGia VARCHAR(255),

    TheLoai VARCHAR(100),

    GiaBan INT

);

 

INSERT INTO Sach (MaSach, TenSach, TacGia, TheLoai, GiaBan) VALUES

('SGK01', 'Đắc Nhân Tâm', 'Dale Carnegie', 'Kỹ năng sống', 120000),

('SVK02', 'Nhà Giả Kim', 'Paulo Coelho', 'Văn học', 89000),

('STN03', 'Lược Sử Loài Người', 'Yuval Noah Harari', 'Lịch sử', 150000),

('SKD04', 'Tư Duy Nhanh và Chậm', 'Daniel Kahneman', 'Kinh doanh', 99000);
-- Cập nhật giá bán của sách 'Tư Duy Nhanh và Chậm' (SKD04)
UPDATE Sach
SET GiaBan = 180000
WHERE MaSach = 'SKD04';
-- Cập nhật tên tác giả của sách 'Nhà Giả Kim' (SVK02)
UPDATE Sach
SET TacGia = 'Paulo Coelho' -- Đã được sửa lại để có dấu
WHERE MaSach = 'SVK02';
-- Xóa sách 'Đắc Nhân Tâm' (SGK01) khỏi hệ thống
DELETE FROM Sach
WHERE MaSach = 'SGK01';
-- Hiển thị toàn bộ danh sách sản phẩm còn lại
SELECT * FROM Sach;