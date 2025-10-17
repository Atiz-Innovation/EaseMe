# Highly Recommended Deals - Fields

| Field Name          | Data Type    | Description                                      | Example Value             |
|---------------------|--------------|--------------------------------------------------|--------------------------|
| deal_id             | String       | รหัสดีล (Unique)                                 | DEAL20251016001          |
| merchant_id         | String       | รหัสร้านค้า                                      | MCH001                   |
| title               | String       | ชื่อดีล                                          | ซื้อ 1 แถม 1             |
| description         | String       | รายละเอียดดีล                                    | ซื้อเมนูใดก็ได้ แถมฟรี 1 ชิ้น |
| start_date          | DateTime     | วันที่เริ่มต้นแคมเปญ                             | 2025-10-20T00:00:00Z     |
| end_date            | DateTime     | วันที่สิ้นสุดแคมเปญ                              | 2025-10-31T23:59:59Z     |
| image_url           | String       | URL รูปภาพประกอบดีล                              | https://img.com/deal1.jpg|
| status              | String       | สถานะดีล (ACTIVE, INACTIVE, EXPIRED)             | ACTIVE                   |
| priority            | Number       | ลำดับการแสดง (1 = แนะนำสูงสุด)                  | 1                        |
| created_by          | String       | ผู้สร้างดีล (user_id)                            | admin001                 |
| created_at          | DateTime     | วันที่สร้าง                                       | 2025-10-16T10:00:00Z     |
| updated_at          | DateTime     | วันที่แก้ไขล่าสุด                                 | 2025-10-16T12:00:00Z     |

# หมายเหตุ:
- สถานะดีลจะเปลี่ยนเป็น EXPIRED อัตโนมัติเมื่อสิ้นสุด end_date
- priority ยิ่งน้อยยิ่งแสดงบนสุด
