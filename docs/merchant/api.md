# API สำหรับจัดการร้านค้า (Merchant)

## 1. สร้างร้านค้าใหม่

**Endpoint:**
`POST /api/v1/merchant`

**Request Body:**
```json
{
  "name": "ABC Spa",
  "owner_name": "คุณสมชาย ใจดี",
  "phone": "0812345678",
  "email": "abcspa@email.com",
  "address": "123 ถนนสุขุมวิท กทม.",
  "province": "กรุงเทพมหานคร",
  "district": "คลองเตย",
  "sub_district": "คลองตัน",
  "postal_code": "10110",
  "tax_id": "0105551234567",
  "business_type": "สปา",
  "logo_url": "https://cdn.com/logo.png"
}
```

**Response:**
```json
{
  "id": "mch123456",
  "created_at": "2025-10-16T08:00:00Z"
}
```

## 2. แก้ไขข้อมูลร้านค้า

**Endpoint:**
`PUT /api/v1/merchant/{id}`

**Request Body:**
```json
{
  "name": "ABC Spa & Relax",
  "phone": "0897654321",
  "logo_url": "https://cdn.com/newlogo.png"
}
```

**Response:**
```json
{
  "updated_at": "2025-10-16T09:00:00Z"
}
```

## 3. เปลี่ยนสถานะร้านค้า (เปิด/ปิด)

**Endpoint:**
`PATCH /api/v1/merchant/{id}/status`

**Request Body:**
```json
{
  "is_active": false
}
```

**Response:**
```json
{
  "success": true
}
```

## 4. ดูข้อมูลร้านค้า

**Endpoint:**
`GET /api/v1/merchant/{id}`

**Response:**
```json
{
  "id": "mch123456",
  "name": "ABC Spa",
  "owner_name": "คุณสมชาย ใจดี",
  "phone": "0812345678",
  "email": "abcspa@email.com",
  "address": "123 ถนนสุขุมวิท กทม.",
  "province": "กรุงเทพมหานคร",
  "district": "คลองเตย",
  "sub_district": "คลองตัน",
  "postal_code": "10110",
  "tax_id": "0105551234567",
  "business_type": "สปา",
  "logo_url": "https://cdn.com/logo.png",
  "is_active": true,
  "branches": ["brn001", "brn002"],
  "created_at": "2025-10-16T08:00:00Z",
  "updated_at": "2025-10-16T09:00:00Z"
}
```

## หมายเหตุการใช้งาน API
- ต้องตรวจสอบข้อมูลร้านค้าก่อนเปิดใช้งาน (is_active)
- การลบร้านค้าทำได้เฉพาะผู้ดูแลระบบเท่านั้น
- ทุก Endpoint รองรับและส่งข้อมูลเป็น JSON
