# API สำหรับ System

## 1. ดูค่าการตั้งค่าระบบ

**Endpoint:**
`GET /api/v1/system/settings`

**Response:**
```json
[
  {
    "id": "sys-001-abc123",
    "key": "maintenance_mode",
    "value": true,
    "description": "เปิด/ปิดโหมดบำรุงรักษา",
    "scope": "global",
    "updated_by": "admin001",
    "updated_at": "2025-10-16T09:24:00Z"
  },
  {
    "id": "sys-002-def456",
    "key": "system_version",
    "value": "1.4.2",
    "description": "เวอร์ชันของระบบ",
    "scope": "global",
    "updated_by": "system",
    "updated_at": "2025-10-16T08:00:00Z"
  }
]
```

## 2. อัปเดตค่าระบบ

**Endpoint:**
`PUT /api/v1/system/settings/{id}`

**Request Body:**
```json
{
  "value": false
}
```

**Response:**
```json
{
  "success": true,
  "updated_at": "2025-10-16T10:00:00Z"
}
```

## 3. ดูประวัติการเปลี่ยนแปลงค่าระบบ

**Endpoint:**
`GET /api/v1/system/settings/{id}/history`

**Response:**
```json
[
  {
    "value": true,
    "updated_by": "admin002",
    "updated_at": "2025-10-15T12:00:00Z"
  },
  {
    "value": false,
    "updated_by": "admin001",
    "updated_at": "2025-10-14T16:35:00Z"
  }
]
```

## หมายเหตุการใช้งาน API
- การอัปเดตค่าระบบต้องตรวจสอบสิทธิ์ (Authorization) ทุกครั้ง
- ค่าระบบบางรายการอาจจำเป็นต้องรีเฟรชหรือ reload ระบบเพื่อให้ค่ามีผล
- Endpoint รองรับเฉพาะ JSON และรองรับ HTTPS เท่านั้น
```

---

### 4. `test-case.md`

```markdown
# Test Cases สำหรับ System

## 1. ดูค่าการตั้งค่าระบบทั้งหมดสำเร็จ
**Input:** GET `/api/v1/system/settings`
**Expected Output:** ได้รายการการตั้งค่าระบบทั้งหมดในรูปแบบ JSON

## 2. อัปเดตค่า maintenance_mode สำเร็จ
**Input:** PUT `/api/v1/system/settings/{id}` โดยส่ง `{ "value": false }`
**Expected Output:** ระบบอัปเดตค่า maintenance_mode เป็น false และคืนค่า success

## 3. อัปเดตค่าระบบโดยไม่มีสิทธิ์ (Unauthorized)
**Input:** PUT `/api/v1/system/settings/{id}` โดย user ที่ไม่มีสิทธิ์
**Expected Output:** ระบบแจ้ง error 401 หรือ 403 Forbidden

## 4. ดูประวัติการเปลี่ยนแปลงของค่า system_version
**Input:** GET `/api/v1/system/settings/{id}/history`
**Expected Output:** ได้รายการประวัติการเปลี่ยนแปลงค่าระบบตาม id ที่ระบุ

## 5. อัปเดตค่าระบบโดยส่ง value ชนิดข้อมูลไม่ถูกต้อง
**Input:** PUT `/api/v1/system/settings/{id}` โดยส่ง `{ "value": [1,2,3] }` สำหรับค่า Boolean
**Expected Output:** ระบบแจ้ง error "invalid value type"

## 6. ทดสอบความปลอดภัยในการเข้าถึง API
**Input:** GET/PUT โดยไม่ส่ง Authorization Header
**Expected Output:** ระบบแจ้ง error ไม่สามารถเข้าถึง API ได้
