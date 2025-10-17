# Support API

## 1. GET /api/support/tickets
- รายการ Ticket ทั้งหมด
```json
[
  {
    "ticket_id": "SUP-001",
    "category": "การใช้งานระบบ",
    "subject": "ล็อกอินไม่ได้",
    "status": "Open",
    "created_by": "สมชาย ใจดี",
    "created_date": "2024-05-10T09:00"
  }
]
```

## 2. GET /api/support/tickets/{id}
- รายละเอียด Ticket

## 3. POST /api/support/tickets
- รับเรื่อง Ticket ใหม่

## 4. PUT /api/support/tickets/{id}
- อัปเดต Ticket (เปลี่ยนสถานะ ใส่หมายเหตุ ฯลฯ)

## 5. DELETE /api/support/tickets/{id}
- ลบ Ticket

## 6. GET /api/support/tickets/export
- ส่งออกรายการ Ticket

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message ในทุก response