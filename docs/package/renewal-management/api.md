# API สำหรับจัดการต่ออายุแพ็กเกจ (Package Renewal Management)

## 1. สร้างรายการต่ออายุแพ็กเกจ (Manual Renewal)

**Endpoint:**
POST /api/v1/package/renewal

**Request Body:**
```json
{
  "package_id": "pkg-123456",
  "merchant_id": "mch789012",
  "user_id": "usr456789",
  "renewal_type": "manual",
  "amount": 1500.00,
  "payment_reference": "pay-efg789345",
  "remark": "โอนเงินผ่านธนาคาร"
}
```

**Response:**
```json
{
  "id": "rwl-8fa7b2d4-abc1-4f...",
  "renewal_status": "pending",
  "renewal_date": "2025-10-16T09:00:00Z"
}
```

---

## 2. ตั้งค่าต่ออายุอัตโนมัติ

**Endpoint:**
PUT /api/v1/package/renewal/auto

**Request Body:**
```json
{
  "package_id": "pkg-123456",
  "merchant_id": "mch789012",
  "is_auto_renewal": true
}
```

**Response:**
```json
{
  "success": true,
  "message": "ตั้งค่าต่ออายุอัตโนมัติสำเร็จ"
}
```

---

## 3. ดูประวัติรายการต่ออายุ

**Endpoint:**
GET /api/v1/package/renewal/history?merchant_id=mch789012

**Response:**
```json
[
  {
    "id": "rwl-8fa7b2d4-abc1-4f...",
    "package_id": "pkg-123456",
    "renewal_type": "auto",
    "renewal_status": "success",
    "renewal_date": "2025-10-01T09:00:00Z",
    "expired_date": "2025-11-01T09:00:00Z",
    "amount": 1500.00,
    "payment_reference": "pay-xxx",
    "remark": ""
  }
]
```

---

## 4. ตรวจสอบสถานะการต่ออายุ (เช็คสถานะล่าสุด)

**Endpoint:**
GET /api/v1/package/renewal/status?package_id=pkg-123456

**Response:**
```json
{
  "renewal_status": "success",
  "expired_date": "2025-11-01T09:00:00Z"
}
```

---

## หมายเหตุการใช้งาน API
- ทุก endpoint ต้องยืนยันตัวตน merchant/user
- เมื่อมีการต่ออายุแบบ auto ระบบจะ trigger เองในวันครบกำหนด
- สามารถตรวจสอบสถานะได้ทุกขั้นตอนผ่าน API
- ข้อมูลทุกรายการ response เป็น JSON เท่านั้น
