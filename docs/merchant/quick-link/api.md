# API สำหรับจัดการ Quick Link (ลิงก์ด่วน)

## 1. เพิ่มลิงก์ด่วนใหม่

**Endpoint:**
`POST /api/v1/merchant/quick-links`

**Request Body:**
```json
{
  "merchant_id": "mch123456",
  "label": "จองคิวด่วน",
  "url": "https://line.me/ti/p/xxxxxx",
  "icon_url": "https://cdn.example.com/line.png",
  "order": 1,
  "is_active": true
}
```
**Response:**
```json
{
  "id": "qlk-1234abcd-5678efgh",
  "created_at": "2025-10-16T07:00:00Z"
}
```

## 2. อัปเดตลิงก์ด่วน

**Endpoint:**
`PUT /api/v1/merchant/quick-links/{id}`

**Request Body:**
```json
{
  "label": "จองคิวผ่านไลน์",
  "url": "https://line.me/ti/p/yyyyyy",
  "icon_url": "https://cdn.example.com/line2.png",
  "order": 2,
  "is_active": false
}
```
**Response:**
```json
{
  "updated_at": "2025-10-16T08:45:00Z"
}
```

## 3. ลบลิงก์ด่วน

**Endpoint:**
`DELETE /api/v1/merchant/quick-links/{id}`

**Response:**
```json
{
  "success": true
}
```

## 4. ดูรายการลิงก์ด่วน

**Endpoint:**
`GET /api/v1/merchant/quick-links?merchant_id=mch123456`

**Response:**
```json
[
  {
    "id": "qlk-1234abcd-5678efgh",
    "merchant_id": "mch123456",
    "label": "จองคิวด่วน",
    "url": "https://line.me/ti/p/xxxxxx",
    "icon_url": "https://cdn.example.com/line.png",
    "order": 1,
    "is_active": true,
    "created_at": "2025-10-16T07:00:00Z",
    "updated_at": "2025-10-16T08:45:00Z"
  }
]
```

## หมายเหตุการใช้งาน API
- การเปลี่ยนลำดับ (order) ต้องอัปเดตค่าของลิงก์อื่น ๆ ในร้านให้ถูกต้องตามลำดับใหม่
- ทุก endpoint ตรวจสอบสิทธิ์ merchant_id เสมอ
- จำกัดจำนวนลิงก์สูงสุดต่อ merchant ตาม policy ระบบ
