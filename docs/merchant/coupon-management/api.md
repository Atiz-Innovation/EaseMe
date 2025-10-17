# API สำหรับจัดการคูปอง (Coupon Management)

## 1. สร้างคูปองใหม่

**Endpoint:**
`POST /api/v1/merchant/coupons`

**Request Body:**
```json
{
  "merchant_id": "mch123456",
  "code": "NEWYEAR2025",
  "name": "โปรรับปีใหม่ 2025",
  "description": "ลด 20% สำหรับลูกค้าใหม่",
  "type": "percent",
  "value": 20,
  "min_spend": 500,
  "max_discount": 200,
  "start_date": "2025-12-01T00:00:00Z",
  "end_date": "2025-12-31T23:59:59Z",
  "usage_limit": 100,
  "per_user_limit": 1,
  "is_active": true,
  "applicable_services": ["svc101", "svc205"],
  "image_url": "https://cdn.example.com/coupon/newyear2025.png"
}
```

**Response:**
```json
{
  "id": "coup-1234-abcd-5678",
  "created_at": "2025-10-16T08:00:00Z"
}
```

## 2. แก้ไขคูปอง

**Endpoint:**
`PUT /api/v1/merchant/coupons/{id}`

**Request Body:**
```json
{
  "name": "โปรรับปีใหม่ 2025 (อัปเดต)",
  "description": "ลด 20% สำหรับลูกค้าใหม่เท่านั้น",
  "end_date": "2026-01-15T23:59:59Z",
  "is_active": false
}
```

**Response:**
```json
{
  "updated_at": "2025-10-17T09:00:00Z"
}
```

## 3. ปิด/เปิดการใช้งานคูปอง

**Endpoint:**
`PATCH /api/v1/merchant/coupons/{id}/status`

**Request Body:**
```json
{
  "is_active": false
}
```

**Response:**
```json
{
  "updated_at": "2025-10-17T09:10:00Z"
}
```

## 4. ลบคูปอง

**Endpoint:**
`DELETE /api/v1/merchant/coupons/{id}`

**Response:**
```json
{
  "success": true
}
```

## 5. ดูรายการคูปอง

**Endpoint:**
`GET /api/v1/merchant/coupons?merchant_id=mch123456`

**Response:**
```json
[
  {
    "id": "coup-1234-abcd-5678",
    "code": "NEWYEAR2025",
    "name": "โปรรับปีใหม่ 2025",
    "description": "ลด 20% สำหรับลูกค้าใหม่",
    "type": "percent",
    "value": 20,
    "min_spend": 500,
    "max_discount": 200,
    "start_date": "2025-12-01T00:00:00Z",
    "end_date": "2025-12-31T23:59:59Z",
    "usage_limit": 100,
    "used_count": 12,
    "per_user_limit": 1,
    "is_active": true,
    "applicable_services": ["svc101", "svc205"],
    "image_url": "https://cdn.example.com/coupon/newyear2025.png"
  }
]
```

## หมายเหตุการใช้งาน API
- ไม่อนุญาตให้สร้างโค้ดคูปองซ้ำในร้านค้าเดียวกัน
- หากคูปองถูกใช้งานแล้ว ไม่สามารถเปลี่ยนแปลง code, type หรือ value ได้
- Endpoint ทั้งหมดรองรับ JSON เท่านั้น
- ต้องยืนยัน merchant_id สำหรับเข้าถึงข้อมูล
