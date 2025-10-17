# support/ticket - Fields

| Field Name        | Data Type | Description                                  | Example Value           |
|-------------------|-----------|----------------------------------------------|------------------------|
| ticket_id         | String    | รหัส Ticket อ้างอิง                         | TK202410160001         |
| subject           | String    | หัวข้อปัญหาหรือคำร้อง                      | ระบบล็อกอินเข้าไม่ได้  |
| description       | String    | รายละเอียดปัญหา                             | ไม่สามารถเข้าสู่ระบบ   |
| status            | String    | สถานะ Ticket (NEW, IN_PROGRESS, CLOSED)     | NEW                    |
| priority          | String    | ระดับความสำคัญ (LOW, MEDIUM, HIGH)         | HIGH                   |
| created_by        | String    | ผู้สร้าง Ticket (user_id)                   | U1001                  |
| assigned_to       | String    | เจ้าหน้าที่ผู้รับผิดชอบ (user_id)           | Uadmin02               |
| created_at        | DateTime  | วันที่สร้าง Ticket                          | 2025-10-16T09:25:00Z   |
| updated_at        | DateTime  | วันที่แก้ไขล่าสุด                           | 2025-10-16T10:00:00Z   |
| attachments       | Array     | ไฟล์แนบ (url หรือชื่อไฟล์)                 | ["errlog.png"]         |

# หมายเหตุ:
- ทุก Ticket ต้องมี ticket_id ที่ไม่ซ้ำกัน
- status มีค่า: NEW, IN_PROGRESS, WAITING_CUSTOMER, CLOSED
