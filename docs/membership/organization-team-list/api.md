# Organization/Team List API

## 1. GET /api/orgs
- รายชื่อทีม/องค์กรทั้งหมด
```json
[
  {
    "org_id": "ORG-01",
    "org_name": "ATIZ Partner A",
    "org_type": "Partner",
    "owner_name": "ศิวดล สดใส",
    "status": "Active"
  }
]
```

## 2. POST /api/orgs
- เพิ่มทีม/องค์กรใหม่

## 3. PUT /api/orgs/{id}
- แก้ไขข้อมูลทีม/องค์กร

## 4. DELETE /api/orgs/{id}
- ลบทีม/องค์กร

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message ในทุก response