-- NHIỆM VỤ 1: Thêm một Khách hàng Mới
INSERT INTO sakila.customer (
    store_id, first_name, last_name, email, address_id, active
)
VALUES (
    2, 'ANNA', 'HILL', 'ANNA.HILL@sakilacustomer.org', 5, 1
);



-- NHIỆM VỤ 2: Cập nhật Email cho nhóm khách hàng tên JENNIFER
UPDATE sakila.customer
SET email = REPLACE(email, '@sakilacustomer.org', '@sakilacustomer.com')
WHERE first_name = 'JENNIFER';



-- NHIỆM VỤ 3: Đánh dấu tài khoản khách hàng 25 là không hoạt động
UPDATE sakila.customer
SET active = 0
WHERE customer_id = 25;



/*
