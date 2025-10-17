# ตารางข้อมูลฟิลด์ (Fields) สำหรับ System

| Field Name         | Data Type   | Description                                | Example Value             |
|--------------------|------------|--------------------------------------------|--------------------------|
| id                 | String     | รหัสระบุการตั้งค่าหรือรายการระบบ (UUID)   | "sys-001-abc123"         |
| key                | String     | ชื่อคีย์ของการตั้งค่าหรือรายการ           | "maintenance_mode"        |
| value              | Mixed      | ค่าของคีย์ (อาจเป็น Boolean, String, JSON)| true                     |
| description        | String     | คำอธิบายการตั้งค่าหรือสถานะ               | "เปิด/ปิดโหมดบำรุงรักษา" |
| scope              | String     | ขอบเขตของการตั้งค่า (global, merchant)    | "global"                 |
| updated_by         | String     | ผู้แก้ไขล่าสุด (user id หรือ system)       | "admin001"               |
| updated_at         | DateTime   | วันที่อัปเดตล่าสุด                         | "2025-10-16T09:24:00Z"   |
| created_at         | DateTime   | วันที่สร้างรายการนี้                       | "2025-10-15T17:19:00Z"   |

**หมายเหตุ:** ฟิลด์นี้เป็นตัวอย่างสำหรับการตั้งค่าและสถานะระบบ อาจปรับเปลี่ยนตามลักษณะของระบบจริง
