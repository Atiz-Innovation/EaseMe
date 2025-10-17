# support/knowledge-base - Fields

| Field Name       | Data Type   | Description                                   | Example Value          |
|------------------|------------|-----------------------------------------------|------------------------|
| kb_id            | String     | รหัสฐานความรู้ (Knowledge Base ID)           | KB2024010001           |
| title            | String     | ชื่อหัวข้อความรู้                            | วิธีรีเซ็ตรหัสผ่าน     |
| description      | String     | รายละเอียดเนื้อหาความรู้                     | ...                    |
| category         | String     | หมวดหมู่ความรู้                              | การใช้งานระบบ          |
| tags             | Array      | คำค้นหา/แท็ก                                 | ["reset", "password"]  |
| created_by       | String     | ผู้สร้างข้อมูล                               | admin001               |
| created_at       | DateTime   | วันที่สร้าง                                   | 2025-10-16T09:30:00Z   |
| updated_at       | DateTime   | วันที่แก้ไขล่าสุด                             | 2025-10-16T10:15:00Z   |
| is_active        | Boolean    | สถานะการใช้งาน (true=ใช้งาน, false=ปิด)      | true                   |

# หมายเหตุ:
- ทุก field ต้องระบุค่าตามรูปแบบที่กำหนด
- category และ tags ใช้สำหรับการ filter/ค้นหา
