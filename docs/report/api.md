
# Report API

## 1. GET /api/reports
- รายการ Report ทั้งหมด
```json
[
  {
    "report_id": "RP-001",
    "title": "Annual Report",
    "created_at": "2024-01-01T10:00",
    "author": "John Doe",
    "status": "Draft"
  }
]
```

## 2. POST /api/reports
- เพิ่ม Report ใหม่
```json
{
  "title": "Annual Report",
  "created_at": "2024-01-01",
  "author": "John Doe"
}
```

## 3. PUT /api/reports/{id}
- แก้ไข Report
```json
{
  "title": "Updated Annual Report",
  "status": "Published"
}
```

## 4. DELETE /api/reports/{id}
- ลบ Report

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message เสมอ
