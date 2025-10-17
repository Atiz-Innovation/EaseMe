# Commission Setting API

## 1. GET /api/commissions
- รายการ Commission ทั้งหมด
```json
[
  {
    "commission_id": "CM-001",
    "store_name": "ABC Clinic",
    "merchant_id": "MCH-001",
    "commission_rate": 10,
    "effective_date": "2024-01-01",
    "status": "Active",
    "last_updated": "2024-03-01T10:00"
  }
]
```

## 2. POST /api/commissions
- เพิ่ม Commission ใหม่
```json
{
  "store_name": "ABC Clinic",
  "merchant_id": "MCH-001",
  "commission_rate": 10,
  "effective_date": "2024-01-01"
}
```

## 3. PUT /api/commissions/{id}
- แก้ไข Commission
```json
{
  "commission_rate": 12,
  "status": "Active"
}
```

## 4. DELETE /api/commissions/{id}
- ลบ Commission

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message เสมอ
