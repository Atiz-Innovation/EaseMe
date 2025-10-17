# API สำหรับจัดการ Notification Settings

## 1. ดูรายการตั้งค่าการแจ้งเตือน

**Endpoint:**
`GET /api/v1/notification/settings?user_id=usr123456`

**Response:**
```json
[
  {
    "id": "ntf-001a2b3c",
    "user_id": "usr123456",
    "channel": "email",
    "notification_type": "promotion",
    "is_enabled": true,
    "time_window_start": "08:00",
    "time_window_end": "22:00"
  },
  {
    "id": "ntf-001a2b3d",
    "user_id": "usr123456",
    "channel": "sms",
    "notification_type": "promotion",
    "is_enabled": false,
    "time_window_start": "08:00",
    "time_window_end": "22:00"
  }
]
```

## 2. อัปเดตการตั้งค่าการแจ้งเตือน

**Endpoint:**
`PUT /api/v1/notification/settings/{id}`

**Request Body:**
```json
{
  "is_enabled": false,
  "time_window_start": "09:00",
  "time_window_end": "17:00"
}
```

**Response:**
```json
{
  "updated_at": "2025-10-16T09:30:00Z"
}
```

## 3. สร้างการตั้งค่าการแจ้งเตือนใหม่ (กรณีเพิ่มช่องทาง/ประเภทใหม่)

**Endpoint:**
`POST /api/v1/notification/settings`

**Request Body:**
```json
{
  "user_id": "usr123456",
  "channel": "push",
  "notification_type": "system",
  "is_enabled": true,
  "time_window_start": "00:00",
  "time_window_end": "23:59"
}
```

**Response:**
```json
{
  "id": "ntf-001a2b3f",
  "created_at": "2025-10-16T09:45:00Z"
}
```

## หมายเหตุการใช้งาน API
- การอัปเดตหรือสร้างต้องตรวจสอบสิทธิ์ด้วย user_id
- หากไม่ระบุช่วงเวลา ระบบจะใช้ค่า default (00:00-23:59)
- ต้องระบุ channel และ notification_type ให้ถูกต้องตามที่ระบบกำหนด
