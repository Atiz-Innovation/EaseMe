# support/knowledge-base API

## 1. GET /api/support/knowledge-base
- ดึงรายการฐานความรู้ทั้งหมด
```json
[
  {
    "kb_id": "KB2024010001",
    "title": "วิธีรีเซ็ตรหัสผ่าน",
    "category": "การใช้งานระบบ",
    "tags": ["reset", "password"],
    "is_active": true
  }
]
```

## 2. GET /api/support/knowledge-base/{kb_id}
- ดึงรายละเอียดความรู้ตาม ID

## 3. POST /api/support/knowledge-base
- สร้างข้อมูลความรู้ใหม่

## 4. PUT /api/support/knowledge-base/{kb_id}
- แก้ไขข้อมูลความรู้

## 5. DELETE /api/support/knowledge-base/{kb_id}
- ลบข้อมูลความรู้

## 6. GET /api/support/knowledge-base/export
- ส่งออกข้อมูลความรู้ (CSV/Excel)

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- response ทุก endpoint มี field status, message เสมอ
- ข้อมูลที่ถูกลบจะไม่สามารถ rollback ได้
