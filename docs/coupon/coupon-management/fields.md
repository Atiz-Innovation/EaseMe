# Coupon Management - Fields

| Field Name      | Data Type | Description                                           | Example Value          |
|-----------------|-----------|------------------------------------------------------|------------------------|
| coupon_id       | String    | รหัสคูปอง                                            | COUP-001               |
| coupon_name     | String    | ชื่อคูปอง                                            | ส่วนลด 100 บาท         |
| coupon_type     | Enum      | ประเภทคูปอง (ส่วนลดเงินสด, เปอร์เซ็นต์, ของแถม, ฯลฯ)  | ส่วนลดเงินสด           |
| discount_amount | Number    | จำนวนเงินส่วนลด/เปอร์เซ็นต์ (ตามประเภท)             | 100                    |
| max_discount    | Number    | ส่วนลดสูงสุด (กรณีเปอร์เซ็นต์)                      | 200                    |
| min_spend       | Number    | ยอดซื้อขั้นต่ำที่ใช้คูปองได้                         | 500                    |
| usage_limit     | Number    | จำนวนครั้งที่ใช้ได้ (ทั้งหมด/ต่อคน)                  | 1                      |
| start_date      | Date      | วันเริ่มต้นใช้งานคูปอง                               | 2024-05-01             |
| expiry_date     | Date      | วันหมดอายุคูปอง                                      | 2024-05-31             |
| applicable_to   | String    | ใช้กับร้าน/กลุ่มสินค้า/ลูกค้ากลุ่มใด                | สินค้ากลุ่มสกินแคร์    |
| status          | Enum      | สถานะคูปอง (Active/Inactive/Expired)                 | Active                 |
| created_by      | String    | ผู้สร้างคูปอง                                        | admin                  |
| created_date    | DateTime  | วันที่สร้างคูปอง                                     | 2024-04-20T10:00       |
| usage_count     | Number    | จำนวนครั้งที่ถูกใช้งานแล้ว                           | 7                      |
| edit_button     | Button    | ปุ่มแก้ไขคูปอง                                       | -                      |
| delete_button   | Button    | ปุ่มลบคูปอง                                          | -                      |