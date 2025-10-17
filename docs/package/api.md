# API สำหรับจัดการแผนสมาชิก (Plan Subscription)

## 1. สร้างแผนสมาชิกใหม่

**Endpoint:**
`POST /api/v1/merchant/subscription-plans`

**Request Body:**
```json
{
  "merchant_id": "mch123456",
  "name": "ฟิตเนสรายเดือน Premium",
  "description": "ออกกำลังกายไม่จำกัด ตลอด 30 วัน",
  "price": 999,
  "original_price": 1200,
  "discount_percent": 16.75,
  "billing_cycle": "monthly",
  "duration_count": 1,
  "trial_days": 7,
  "services_included": [
    { "service_id": "svc100", "quota": 30 }
  ],
  "auto_renew": true,
  "purchase_limit": 1,
  "total_quota": null,
  "image_url": "https://cdn.example.com/sub1.png"
}
```

**Response:**
```json
{
  "id": "subplan-001-abcdef",
  "created_at": "2025-10-16T08:00:00Z"
}
```

## 2. แก้ไขแผนสมาชิก

**Endpoint:**
`PUT /api/v1/merchant/subscription-plans/{id}`

**Request Body:**
```json
{
  "price": 1099,
  "trial_days": 14,
  "is_active": false
}
```

**Response:**
```json
{
  "updated_at": "2025-10-16T09:00:00Z"
}
```

## 3. ลบแผนสมาชิก

**Endpoint:**
`DELETE /api/v1/merchant/subscription-plans/{id}`

**Response:**
```json
{
  "success": true
}
```

## 4. ดูรายการแผนสมาชิก

**Endpoint:**
`GET /api/v1/merchant/subscription-plans?merchant_id=mch123456`

**Response:**
```json
[
  {
    "id": "subplan-001-abcdef",
    "name": "ฟิตเนสรายเดือน Premium",
    "price": 999,
    "original_price": 1200,
    "discount_percent": 16.75,
    "billing_cycle": "monthly",
    "duration_count": 1,
    "trial_days": 7,
    "services_included": [
      { "service_id": "svc100", "quota": 30 }
    ],
    "auto_renew": true,
    "purchase_limit": 1,
    "total_quota": null,
    "sold_count": 120,
    "is_active": true,
    "image_url": "https://cdn.example.com/sub1.png"
  }
]
```

## หมายเหตุการใช้งาน API
- กรณีลบแผนที่มีสมาชิกอยู่แล้ว ควรแจ้ง error หรือปิด is_active แทน
- ฟิลด์ quota ใน services_included คือจำนวนครั้งสูงสุด/รอบที่ใช้บริการนั้นได้
- ระบบควรส่งการแจ้งเตือนไปยังลูกค้าเมื่อถึงกำหนดต่ออายุอัตโนมัติ
