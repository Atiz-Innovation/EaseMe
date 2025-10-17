# Support Report API

## 1. GET /api/reports/support
- Query: date, type, status, handler
- Response:
```json
[
  {
    "report_id": "REP-SPT-001",
    "ticket_id": "SUP-002",
    "submission_date": "2024-01-11",
    "submission_time": "09:00",
    "type": "การเงิน",
    "subject": "ยอดเงินไม่ตรง",
    "description": "ยอดเงินเข้าช้า",
    "requester_name": "วรัชญ์ สดใส",
    "requester_user_id": "USR-002",
    "contact": "warat@email.com",
    "status": "Closed",
    "handler": "admin",
    "resolution_date": "2024-01-12",
    "resolution_time": "11:00",
    "remark": "แก้ไขแล้ว"
  }
]
```

## 2. GET /api/reports/support/export
- Export รายงานเป็น CSV/Excel

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message เสมอ
