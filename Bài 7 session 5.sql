-- NHIỆM VỤ 1: Lập danh sách các Giao dịch có Giá trị Cao
SELECT 
    customer_id,
    amount,
    payment_date
FROM sakila.payment
WHERE payment_date > '2005-08-01'
  AND amount > 9.00
ORDER BY amount DESC;



-- NHIỆM VỤ 2: Tìm kiếm các Giao dịch Bất thường
SELECT 
    payment_id,
    customer_id,
    staff_id,
    amount
FROM sakila.payment
WHERE amount = 0.00
   OR (staff_id = 1 AND amount > 10.00)
ORDER BY customer_id ASC;



/*
NHIỆM VỤ 3: PHÂN TÍCH & NHẬN ĐỊNH

1. Khách hàng VIP:
   Các giao dịch trong Nhiệm vụ 1 có giá trị lớn và xảy ra sau thời điểm xác định,
   cho thấy một nhóm nhỏ khách hàng có hành vi chi tiêu nhiều hơn hẳn. 
   Việc sắp xếp theo amount giảm dần giúp cửa hàng dễ dàng nhận ra những khách hàng
   đứng đầu về mức chi tiêu và ưu tiên họ trong các chiến dịch chăm sóc hoặc khuyến mãi VIP.

2. Giao dịch Bất thường:
   Giao dịch amount = 0.00 có thể phản ánh nhiều khả năng:
   - Giao dịch khuyến mãi 100%
   - Giao dịch hoàn tiền
   - Nhập sai dữ liệu hoặc lỗi hệ thống xử lý thanh toán
   Quản lý cần theo dõi các giao dịch này để tránh thất thoát doanh thu,
   kiểm tra lỗi hệ thống, hoặc đánh giá tính hiệu quả của các chương trình khuyến mãi.

3. Hiệu suất Nhân viên:
   Việc staff_id = 1 thực hiện nhiều giao dịch > 10.00 có thể là dấu hiệu tốt,
   thể hiện năng lực bán hàng tốt hoặc thường xuyên phục vụ khách chi tiêu cao.
   Tuy nhiên, để kết luận chính xác cần thêm:
   - Tổng số giao dịch của nhân viên so với đồng nghiệp
   - Doanh thu trung bình theo ca làm việc
   - Thời gian ca, tần suất làm việc
   - So sánh tỷ lệ giao dịch bất thường do nhân viên xử lý
*/
