# Ticket API

## 1. GET /api/support/ticket
- ดึงรายการ Ticket ทั้งหมด
```json
[
  {
    "ticket_id": "TK202410160001",
    "subject": "ระบบล็อกอินเข้าไม่ได้",
    "status": "NEW",
    "priority": "HIGH",
    "created_by": "U1001",
    "created_at": "2025-10-16T09:25:00Z"
  }
]
```

## 2. GET /api/support/ticket/{ticket_id}
- ดึงรายละเอียด Ticket รายการเดียว

## 3. POST /api/support/ticket
- สร้าง Ticket ใหม่ (ต้องระบุ subject, description, priority)
```json
{
  "subject": "ปัญหาเมลไม่เข้า",
  "description": "ไม่ได้รับอีเมลแจ้งเตือน",
  "priority": "MEDIUM"
}
```

## 4. PUT /api/support/ticket/{ticket_id}
- แก้ไขข้อมูล Ticket เช่น เปลี่ยน status, assigned_to, description

## 5. DELETE /api/support/ticket/{ticket_id}
- ลบ Ticket (เฉพาะ admin หรือสถานะ NEW)

## 6. GET /api/support/ticket/export
- ส่งออกข้อมูล Ticket เป็น Excel/CSV

## หมายเหตุ
- ทุก API ต้องแนบ Authorization: Bearer Token
- Response ทุกคำขอมี status (success, error) และ message
- หาก Ticket ไม่พบหรือไม่มีสิทธิ์จะส่ง error code 404 หรือ 403
