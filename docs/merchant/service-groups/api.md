# API สำหรับจัดการกลุ่มบริการ (Service Groups)

## 1. สร้างกลุ่มบริการใหม่

**Endpoint:**
`POST /api/v1/merchant/service-groups`

**Request Body:**
```json
{
  "merchant_id": "mch123456",
  "name": "บริการนวด",
  "description": "บริการนวดเพื่อสุขภาพ",
  "icon_url": "https://cdn.example.com/icons/massage.png",
  "services": ["svc101", "svc102"]
}
```

**Response:**
```json
{
  "id": "a12b34cd-56ef-7890-abcd-ef1234567890",
  "created_at": "2025-10-16T08:00:00Z"
}
```

## 2. แก้ไขกลุ่มบริการ

**Endpoint:**
`PUT /api/v1/merchant/service-groups/{id}`

**Request Body:**
```json
{
  "name": "บริการนวดผ่อนคลาย",
  "description": "บริการนวดเพื่อผ่อนคลายกล้ามเนื้อ",
  "icon_url": "https://cdn.example.com/icons/relax.png",
  "services": ["svc101", "svc103"]
}
```

**Response:**
```json
{
  "updated_at": "2025-10-16T09:00:00Z"
}
```

## 3. ลบกลุ่มบริการ

**Endpoint:**
`DELETE /api/v1/merchant/service-groups/{id}`

**Response:**
```json
{
  "success": true
}
```

## 4. ดูรายการกลุ่มบริการ

**Endpoint:**
`GET /api/v1/merchant/service-groups?merchant_id=mch123456`

**Response:**
```json
[
  {
    "id": "a12b34cd-56ef-7890-abcd-ef1234567890",
    "name": "บริการนวด",
    "description": "บริการนวดเพื่อสุขภาพ",
    "icon_url": "https://cdn.example.com/icons/massage.png",
    "is_active": true,
    "services": ["svc101", "svc102"]
  }
]
```

## หมายเหตุการใช้งาน API
- การลบกลุ่มบริการจะไม่กระทบกับบริการภายใน แค่ถอดบริการออกจากกลุ่มเท่านั้น
- ต้องส่ง `merchant_id` เพื่อยืนยันสิทธิ์การเข้าถึงข้อมูล
- Endpoint ทั้งหมดรองรับ JSON เท่านั้น
