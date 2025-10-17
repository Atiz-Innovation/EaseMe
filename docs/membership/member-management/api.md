# Member Management API

## 1. GET /api/members
- รายชื่อสมาชิกทั้งหมด
```json
[
  {
    "user_id": "USR-001",
    "full_name": "ศิวดล สดใส",
    "email": "siwadon@email.com",
    "status": "Active",
    "member_level": "Gold"
  }
]
```

## 2. POST /api/members
- เพิ่มสมาชิกใหม่

## 3. PUT /api/members/{id}
- แก้ไขข้อมูลสมาชิก

## 4. DELETE /api/members/{id}
- ลบสมาชิก

## 5. PATCH /api/members/{id}/status
- เปลี่ยนสถานะ/ระงับสิทธิ์

## 6. POST /api/members/{id}/reset-password
- ส่งลิงก์/รีเซ็ตรหัสผ่าน

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message ในทุก response
