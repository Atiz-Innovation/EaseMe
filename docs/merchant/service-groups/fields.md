# ตารางข้อมูลฟิลด์ (Fields) สำหรับ Service Groups

| Field Name         | Data Type   | Description                        | Example Value      |
|--------------------|------------|------------------------------------|--------------------|
| id                 | String     | รหัสกลุ่มบริการ (UUID)            | "a12b34cd-56ef..." |
| merchant_id        | String     | รหัสร้านค้าที่เป็นเจ้าของกลุ่ม    | "mch123456"        |
| name               | String     | ชื่อกลุ่มบริการ                   | "บริการนวด"        |
| description        | String     | คำอธิบายกลุ่มบริการ               | "บริการสปาและนวด"  |
| icon_url           | String     | URL ของไอคอนกลุ่มบริการ           | "https://..."      |
| is_active          | Boolean    | สถานะเปิดใช้งานกลุ่มบริการ        | true               |
| created_at         | DateTime   | วันที่สร้างกลุ่มบริการ            | "2025-10-16T08:00:00Z" |
| updated_at         | DateTime   | วันที่อัปเดตล่าสุด                 | "2025-10-16T09:00:00Z" |
| services           | Array      | รายการบริการในกลุ่ม (id ของบริการ) | ["svc101", "svc102"]  |
