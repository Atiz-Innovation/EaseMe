# ตารางข้อมูลฟิลด์ (Fields) สำหรับ Coupon Management

| Field Name         | Data Type   | Description                                 | Example Value             |
|--------------------|------------|---------------------------------------------|--------------------------|
| id                 | String     | รหัสคูปอง (UUID)                           | "coup-1234-abcd-5678"    |
| merchant_id        | String     | รหัสร้านค้าที่ออกคูปอง                     | "mch123456"              |
| code               | String     | โค้ดคูปองที่ลูกค้าใช้กรอก                   | "NEWYEAR2025"            |
| name               | String     | ชื่อรายการคูปอง                             | "โปรรับปีใหม่ 2025"      |
| description        | String     | คำอธิบายโปรโมชั่นคูปอง                      | "ลด 20% สำหรับลูกค้าใหม่"|
| type               | String     | ประเภทคูปอง ("percent", "fixed", "free")   | "percent"                |
| value              | Number     | มูลค่าส่วนลด (เช่น 20 ถ้า 20%)             | 20                       |
| min_spend          | Number     | ยอดใช้จ่ายขั้นต่ำที่ใช้คูปองได้ (บาท)        | 500                      |
| max_discount       | Number     | ส่วนลดสูงสุด (บาท)                          | 200                      |
| start_date         | DateTime   | วันเวลาเริ่มใช้งานคูปอง                    | "2025-12-01T00:00:00Z"   |
| end_date           | DateTime   | วันเวลาหมดอายุคูปอง                        | "2025-12-31T23:59:59Z"   |
| usage_limit        | Number     | จำนวนครั้งที่ใช้ได้ทั้งหมด                   | 100                      |
| used_count         | Number     | จำนวนครั้งที่ถูกใช้งานแล้ว                  | 12                       |
| per_user_limit     | Number     | จำกัดจำนวนการใช้ต่อ 1 ผู้ใช้                 | 1                        |
| is_active          | Boolean    | สถานะเปิด/ปิดการใช้งานคูปอง                 | true                     |
| created_at         | DateTime   | วันที่สร้างคูปอง                            | "2025-10-16T08:00:00Z"   |
| updated_at         | DateTime   | วันที่อัปเดตล่าสุด                          | "2025-10-17T09:00:00Z"   |
| applicable_services| Array      | รายการบริการที่ใช้คูปองนี้ได้ (service_id)   | ["svc101", "svc205"]     |
| image_url          | String     | URL รูปโปรโมทคูปอง (ถ้ามี)                  | "https://..."            |
