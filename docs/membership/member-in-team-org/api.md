# Member in Team/Org API

## 1. GET /api/orgs/{org_id}/members
- รายการสมาชิกในแต่ละทีม/องค์กร
```json
[
  {
    "user_id": "USR-004",
    "full_name": "วิภาดา ดีใจ",
    "email": "vipada@email.com",
    "role_in_team": "Admin",
    "status": "Active",
    "joined_date": "2024-01-15"
  }
]
```

## 2. POST /api/orgs/{org_id}/members
- เพิ่มสมาชิกในทีม/องค์กร

## 3. PUT /api/orgs/{org_id}/members/{user_id}
- เปลี่ยนบทบาท/สถานะ/ข้อมูลสมาชิก

## 4. DELETE /api/orgs/{org_id}/members/{user_id}
- ลบสมาชิกออกจากทีม

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message ในทุก response