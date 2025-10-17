# Payment Gateway API

## 1. GET /api/gateways
- รายการ Payment Gateway ทั้งหมด
```json
[
  {
    "gateway_id": "PG-01",
    "gateway_name": "Omise",
    "status": "Active",
    "fee_structure": "2.9%+10บาท",
    "connected_date": "2024-01-10"
  }
]
```

## 2. POST /api/gateways
- เพิ่ม Payment Gateway
```json
{
  "gateway_name": "Omise",
  "fee_structure": "2.9%+10บาท",
  "status": "Active"
}
```

## 3. PUT /api/gateways/{id}
- แก้ไข Payment Gateway
```json
{
  "fee_structure": "2.7%+10บาท",
  "status": "Inactive"
}
```

## 4. DELETE /api/gateways/{id}
- ลบ Payment Gateway

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message เสมอ
