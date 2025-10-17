# API สำหรับจัดการ Integration Settings

## 1. ดูรายการการตั้งค่าการเชื่อมต่อ

**Endpoint:**
`GET /api/v1/system/integration-settings`

**Query Parameter ตัวอย่าง:**
`?system_name=LINE OA`

**Response:**
```json
[
  {
    "id": "itg-01b23c4d-5678",
    "system_name": "LINE OA",
    "config_key": "api_url",
    "config_value": "https://api.line.me",
    "is_active": true,
    "created_by": "admin01",
    "created_at": "2025-10-16T08:00:00Z",
    "updated_at": "2025-10-16T08:15:00Z",
    "description": "ตั้งค่า API"
  }
]
```
---

## 2. สร้างการตั้งค่าใหม่

**Endpoint:**
`POST /api/v1/system/integration-settings`

**Request Body:**
```json
{
  "system_name": "LINE OA",
  "config_key": "channel_access_token",
  "config_value": "xxx",
  "is_active": true,
  "created_by": "admin01",
  "description": "Access Token สำหรับ LINE OA"
}
```
**Response:**
```json
{
  "id": "itg-02c34d5e-6789",
  "created_at": "2025-10-16T08:30:00Z"
}
```
---

## 3. แก้ไขการตั้งค่า

**Endpoint:**
`PUT /api/v1/system/integration-settings/{id}`

**Request Body:**
```json
{
  "config_value": "yyy",
  "description": "อัปเดต Access Token ล่าสุด",
  "is_active": false
}
```
**Response:**
```json
{
  "updated_at": "2025-10-16T08:45:00Z"
}
```
---

## 4. ลบการตั้งค่า

**Endpoint:**
`DELETE /api/v1/system/integration-settings/{id}`

**Response:**
```json
{
  "success": true
}
```

## หมายเหตุการใช้งาน API
- ระบบจะไม่แสดง config_value ที่เป็นความลับในฝั่ง response หากระบุประเภทเช่น secret, password, token
- ต้องมีสิทธิ์ admin หรือ system operator ในการแก้ไขหรือลบ
- ทุก endpoint ต้องมีการตรวจสอบ token และสิทธิ์ผู้ใช้
