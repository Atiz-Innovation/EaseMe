# API สำหรับจัดการแบนเนอร์ (Banner Management)

## 1. สร้างแบนเนอร์ใหม่

**Endpoint:**
`POST /api/v1/merchant/banners`

**Request Body:**
```json
{
  "merchant_id": "mch123456",
  "title": "โปรโมชันลดราคา",
  "image_url": "https://cdn.example.com/banner1.png",
  "link_url": "https://shop.example.com/promo1",
  "display_order": 1,
  "start_date": "2025-10-16T00:00:00Z",
  "end_date": "2025-10-31T23:59:59Z",
  "is_active": true
}
```
**Response:**
```json
{
  "id": "bann-1234-abcd-5678-efgh",
  "created_at": "2025-10-16T08:00:00Z"
}
```

## 2. แก้ไขแบนเนอร์

**Endpoint:**
`PUT /api/v1/merchant/banners/{id}`

**Request Body:**
```json
{
  "title": "โปรโมชันใหม่",
  "image_url": "https://cdn.example.com/banner2.png",
  "link_url": "https://shop.example.com/promo2",
  "display_order": 2,
  "start_date": "2025-10-20T00:00:00Z",
  "end_date": "2025-10-31T23:59:59Z",
  "is_active": false
}
```
**Response:**
```json
{
  "updated_at": "2025-10-16T09:00:00Z"
}
```

## 3. ลบแบนเนอร์

**Endpoint:**
`DELETE /api/v1/merchant/banners/{id}`

**Response:**
```json
{
  "success": true
}
```

## 4. ดูรายการแบนเนอร์

**Endpoint:**
`GET /api/v1/merchant/banners?merchant_id=mch123456`

**Response:**
```json
[
  {
    "id": "bann-1234-abcd-5678-efgh",
    "title": "โปรโมชันลดราคา",
    "image_url": "https://cdn.example.com/banner1.png",
    "link_url": "https://shop.example.com/promo1",
    "display_order": 1,
    "is_active": true,
    "start_date": "2025-10-16T00:00:00Z",
    "end_date": "2025-10-31T23:59:59Z"
  }
]
```

## หมายเหตุการใช้งาน API
- การเรียกดูรายการแบนเนอร์จะเรียงตาม `display_order` จากน้อยไปมาก
- การลบแบนเนอร์จะไม่กระทบกับข้อมูลอื่น ๆ ของร้านค้า
- ต้องระบุ `merchant_id` ทุกครั้งเพื่อความถูกต้องของข้อมูล
