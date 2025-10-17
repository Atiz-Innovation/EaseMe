# API สำหรับจัดการแจ้งเตือน (Notification)

## 1. ดูรายการแจ้งเตือนของผู้ใช้

**Endpoint:**
`GET /api/v1/notification?user_id=user_12345`

**Response:**
```json
[
  {
    "id": "88a4d9dc-0e56-4b3c-9f44-12a3e6d0c123",
    "type": "promo",
    "title": "โปรโมชั่นใหม่!",
    "message": "รับส่วนลด 20% เมื่อซื้อครั้งแรก",
    "deeplink_url": "app://promo/2025",
    "is_read": false,
    "sent_at": "2025-10-16T12:34:56Z",
    "channel": "in-app",
    "metadata": {"promo_id":"p123"}
  }
]
```

## 2. อ่านแจ้งเตือน (Mark as Read)

**Endpoint:**
`PUT /api/v1/notification/{id}/read`

**Request Body:**
(ไม่ต้องส่งข้อมูล)

**Response:**
```json
{
  "success": true,
  "read_at": "2025-10-16T13:00:00Z"
}
```

## 3. ส่งแจ้งเตือนใหม่ (สำหรับแอดมิน/ระบบ)

**Endpoint:**
`POST /api/v1/notification`

**Request Body:**
```json
{
  "user_id": "user_12345",
  "type": "system",
  "title": "ระบบจะปิดปรับปรุงคืนนี้",
  "message": "ระบบจะปิดปรับปรุงเวลา 23:00-24:00 น.",
  "deeplink_url": "",
  "channel": "in-app",
  "metadata": {}
}
```

**Response:**
```json
{
  "id": "c1b2e3f4-8d7a-4c9d-9e12-7f8d9a0b1234",
  "sent_at": "2025-10-16T15:10:00Z"
}
```

## 4. ลบแจ้งเตือน (Delete Notification)

**Endpoint:**
`DELETE /api/v1/notification/{id}`

**Response:**
```json
{
  "success": true
}
```

## หมายเหตุการใช้งาน API
- Endpoint ทั้งหมดรับ-ส่งข้อมูลแบบ JSON เท่านั้น
- สิทธิ์การเข้าถึง: การส่ง/ลบแจ้งเตือนต้องเป็น admin หรือระบบเท่านั้น
- การ Mark as Read จะอัปเดต field `read_at` และ `is_read` ในระบบ
