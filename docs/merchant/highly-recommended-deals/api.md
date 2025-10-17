# Highly Recommended Deals API

## 1. GET /api/merchant/highly-recommended-deals
- ดึงรายการดีลแนะนำทั้งหมด
```json
[
  {
    "deal_id": "DEAL20251016001",
    "merchant_id": "MCH001",
    "title": "ซื้อ 1 แถม 1",
    "status": "ACTIVE",
    "priority": 1,
    "start_date": "2025-10-20T00:00:00Z",
    "end_date": "2025-10-31T23:59:59Z"
  }
]
```

## 2. GET /api/merchant/highly-recommended-deals/{deal_id}
- ดึงรายละเอียดดีลแนะนำตาม deal_id

## 3. POST /api/merchant/highly-recommended-deals
- สร้างดีลแนะนำใหม่
```json
{
  "merchant_id": "MCH001",
  "title": "ลด 50% ทุกเมนู",
  "description": "เฉพาะลูกค้าใหม่ รับส่วนลด 50%",
  "start_date": "2025-11-01T00:00:00Z",
  "end_date": "2025-11-10T23:59:59Z",
  "priority": 2,
  "image_url": "https://img.com/deal2.jpg"
}
```

## 4. PUT /api/merchant/highly-recommended-deals/{deal_id}
- แก้ไขข้อมูลดีล เช่น title, description, priority, status

## 5. DELETE /api/merchant/highly-recommended-deals/{deal_id}
- ลบดีล (เฉพาะดีลที่ยังไม่ ACTIVE หรือ EXPIRED เท่านั้น)

## 6. GET /api/merchant/highly-recommended-deals/export
- ส่งออกข้อมูลดีลเป็น CSV/Excel

## หมายเหตุ
- ทุก API ต้องแนบ Authorization: Bearer Token
- Response ทุกคำขอมี status (success, error) และ message
- หากดีลหมดอายุแล้วจะไม่สามารถแก้ไขหรือลบได้
```
