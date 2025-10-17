# Coupon Management API

## 1. GET /api/coupons
- รายการคูปองทั้งหมด (รองรับ filter/search)
```json
[
  {
    "coupon_id": "COUP-001",
    "coupon_name": "ส่วนลด 100 บาท",
    "coupon_type": "ส่วนลดเงินสด",
    "discount_amount": 100,
    "min_spend": 500,
    "usage_limit": 1,
    "start_date": "2024-05-01",
    "expiry_date": "2024-05-31",
    "status": "Active"
  }
]
```

## 2. POST /api/coupons
- สร้างคูปองใหม่

## 3. PUT /api/coupons/{id}
- แก้ไขคูปอง

## 4. DELETE /api/coupons/{id}
- ลบคูปอง

## 5. GET /api/coupons/export
- ส่งออกรายการคูปอง (CSV/Excel)

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message เสมอ