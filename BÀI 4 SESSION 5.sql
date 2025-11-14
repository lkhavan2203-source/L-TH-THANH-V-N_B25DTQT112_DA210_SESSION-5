CREATE TABLE NhanVien (

    MaNV VARCHAR(10),

    HoTen VARCHAR(255),

    PhongBan VARCHAR(100),

    ChucVu VARCHAR(100),

    NamSinh INT

);

 

INSERT INTO NhanVien (MaNV, HoTen, PhongBan, ChucVu, NamSinh) VALUES

('NV01', 'Trần Văn Mạnh', 'Kinh doanh', 'Nhân viên', 1995),

('NV02', 'Lê Thị Hoa', 'Marketing', 'Trưởng phòng', 1990),

('NV03', 'Nguyễn Anh Dũng', 'Kinh doanh', 'Nhân viên', 1998),

('NV04', 'Phạm Thị Lan', 'Nhân sự', 'Chuyên viên', 1992),

('NV05', 'Hoàng Minh Tuấn', 'Kỹ thuật', 'Trưởng nhóm', 1991);
-- Tìm nhân viên phòng 'Kinh doanh' VÀ sinh trước 1996
SELECT *
FROM NhanVien
WHERE PhongBan = 'Kinh doanh' AND NamSinh < 1996;
-- Tìm nhân viên là 'Trưởng phòng' HOẶC 'Trưởng nhóm'
SELECT *
FROM NhanVien
WHERE ChucVu = 'Trưởng phòng' OR ChucVu = 'Trưởng nhóm';
-- Tìm nhân viên không thuộc phòng 'Kỹ thuật'
SELECT *
FROM NhanVien
WHERE PhongBan != 'Kỹ thuật';

-- HOẶC:
-- SELECT *
-- FROM NhanVien
-- WHERE NOT PhongBan = 'Kỹ thuật';
-- Tìm nhân viên thuộc phòng 'Marketing' VÀ có chức vụ là 'Trưởng phòng'
SELECT *
FROM NhanVien
WHERE PhongBan = 'Marketing' AND ChucVu = 'Trưởng phòng';