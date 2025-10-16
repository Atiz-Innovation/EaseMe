# Dashboard API Spec (สรุป)

## 1. GET /api/dashboard/summary
- ดึงข้อมูล summary widgets ทั้งหมด
- ตัวอย่าง response:
```json
{
  "total_sales": 120000,
  "gp": 20000,
  "net_revenue": 15000,
  "total_transactions": 180,
  "new_members": 55,
  "active_members": 580,
  "expiring_merchants": 2,
  "pending_transactions": 5
}
```

## 2. GET /api/dashboard/sales-trend
- พารามิเตอร์: from_date, to_date, interval
- Response:
```json
{
  "labels": ["2024-03-01", "2024-03-02"],
  "data": [12000, 15000]
}
```

## 3. GET /api/dashboard/members-growth
- พารามิเตอร์: from_date, to_date, interval
- Response:
```json
{
  "labels": ["2024-03-01", "2024-03-02"],
  "data": [3, 5]
}
```

## 4. GET /api/dashboard/payment-methods
- พารามิเตอร์: from_date, to_date
- Response:
```json
{
  "methods": [
    {"name": "QR", "value": 60},
    {"name": "Credit Card", "value": 30}
  ]
}
```

## 5. GET /api/dashboard/alerts
- Response:
```json
{
  "alerts": [
    {"type": "merchant_expiry", "message": "ร้านค้าใกล้หมดอายุ 2 ราย"},
    {"type": "pending_txn", "message": "ธุรกรรมรอตรวจสอบ 5 รายการ"},
    {"type": "new_member", "message": "สมาชิกใหม่ 5 คน วันนี้"}
  ]
}
```

