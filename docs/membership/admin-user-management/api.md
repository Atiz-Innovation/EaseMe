# Admin/User Management API

## 1. GET /api/admin-users
- รายชื่อผู้ดูแลระบบ
```json
[
  {
    "user_id": "ADM-001",
    "username": "admin",
    "full_name": "ศิวดล สดใส",
    "email": "siwadon@email.com",
    "role": "Owner",
    "status": "Active"
  }
]
```

## 2. POST /api/admin-users
- เพิ่มผู้ดูแลระบบใหม่

## 3. PUT /api/admin-users/{id}
- แก้ไขข้อมูลผู้ดูแลระบบ

## 4. DELETE /api/admin-users/{id}
- ลบผู้ดูแลระบบ

## 5. PATCH /api/admin-users/{id}/status
- เปลี่ยนสถานะ/ระงับสิทธิ์

## 6. POST /api/admin-users/{id}/reset-password
- ส่งลิงก์/รีเซ็ตรหัสผ่าน

## 7. PATCH /api/admin-users/{id}/role
- กำหนด/เปลี่ยนบทบาทผู้ดูแล

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message ในทุก response