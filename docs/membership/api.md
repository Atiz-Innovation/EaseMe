# Membership API

## 1. GET /api/members
- รายชื่อสมาชิก
```json
[
  {
    "member_id": "M-001",
    "name": "John Doe",
    "email": "john.doe@email.com",
    "status": "Active"
  }
]
```

## 2. POST /api/members
- เพิ่มสมาชิกใหม่

## 3. PUT /api/members/{id}
- แก้ไขข้อมูลสมาชิก

## 4. DELETE /api/members/{id}
- ลบสมาชิก
