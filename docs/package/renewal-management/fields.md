# ตารางข้อมูลฟิลด์ (Fields) สำหรับ Package Renewal Management

| Field Name         | Data Type   | Description                                 | Example Value                  |
|--------------------|------------|---------------------------------------------|-------------------------------|
| id                 | String     | รหัสการต่ออายุแพ็กเกจ (UUID)               | "rwl-8fa7b2d4-abc1-4f..."     |
| package_id         | String     | รหัสแพ็กเกจที่ต้องการต่ออายุ               | "pkg-123456"                  |
| merchant_id        | String     | รหัสร้านค้าที่ซื้อแพ็กเกจ                   | "mch789012"                   |
| user_id            | String     | รหัสผู้ใช้งานที่ดำเนินการต่ออายุ           | "usr456789"                   |
| renewal_type       | String     | ประเภทการต่ออายุ (auto/manual)              | "auto"                        |
| renewal_status     | String     | สถานะการต่ออายุ (pending, success, failed)  | "pending"                     |
| renewal_date       | DateTime   | วันที่ทำรายการต่ออายุแพ็กเกจ                | "2025-10-16T09:00:00Z"        |
| expired_date       | DateTime   | วันหมดอายุใหม่หลังจากต่ออายุ                | "2025-11-16T09:00:00Z"        |
| payment_reference  | String     | อ้างอิงการชำระเงินสำหรับการต่ออายุ         | "pay-efg789345"               |
| amount             | Number     | จำนวนเงินที่ชำระต่ออายุ (บาท)               | 1500.00                       |
| created_at         | DateTime   | วันที่สร้างรายการต่ออายุ                    | "2025-10-16T09:00:00Z"        |
| updated_at         | DateTime   | วันที่อัปเดตล่าสุดของรายการต่ออายุ          | "2025-10-16T09:01:00Z"        |
| remark             | String     | หมายเหตุเพิ่มเติม (ถ้ามี)                    | "ชำระผ่านบัตรเครดิต"          |
