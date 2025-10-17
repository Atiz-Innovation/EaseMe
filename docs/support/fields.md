# Support - Fields

| Field Name      | Data Type | Description                                      | Example Value      |
|-----------------|-----------|--------------------------------------------------|--------------------|
| ticket_id       | String    | รหัส Ticket ปัญหาหรือข้อสอบถาม                  | SUP-001            |
| category        | String    | หมวดหมู่ปัญหา/คำถาม                             | การใช้งานระบบ      |
| subject         | String    | หัวข้อปัญหา/คำถาม                               | ล็อกอินไม่ได้       |
| status          | Enum      | สถานะ Ticket (Open/Closed/Pending/Resolved)     | Open               |
| created_by      | String    | ผู้แจ้งปัญหา/สอบถาม                             | สมชาย ใจดี         |
| created_date    | DateTime  | วันที่แจ้งปัญหา/สอบถาม                          | 2024-05-10T09:00   |
| assigned_to     | String    | ผู้รับผิดชอบ Ticket                             | admin              |
| resolution_note | Text      | หมายเหตุ/วิธีแก้ไข                              | แจ้งเปลี่ยนรหัสผ่าน|
| update_date     | DateTime  | วันที่อัปเดตล่าสุด                               | 2024-05-10T10:30   |
