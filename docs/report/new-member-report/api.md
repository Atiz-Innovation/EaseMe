# New Member Report API

## 1. GET /api/reports/new-members
- Query: date, store, status, package, channel
- Response:
```json
[
  {
    "report_id": "REP-NM-001",
    "report_date": "2024-03-01",
    "user_id": "USR-002",
    "full_name": "วรัชญ์ สดใส",
    "email": "warat@email.com",
    "phone": "0823456789",
    "store_name": "ABC Clinic",
    "store_type": "ซาลอน",
    "package_name": "Salon Starter",
    "registration_date": "2024-01-05",
    "activation_date": "2024-01-06",
    "expiry_date": "2024-12-31",
    "registration_channel": "Admin",
    "member_status": "Active",
    "starting_points": 50
  }
]
```

## 2. GET /api/reports/new-members/export
- Export รายงานเป็น CSV/Excel

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message เสมอ