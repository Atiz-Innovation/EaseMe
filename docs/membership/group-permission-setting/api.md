# Group Permission Setting API

## 1. GET /api/groups/permissions
- รายการ Permission ของแต่ละกลุ่ม
```json
[
  {
    "group_id": "GRP-001",
    "group_name": "Partner Group A",
    "permission_id": "PERM-01",
    "permission_name": "View Transaction",
    "permission_scope": "Transaction",
    "status": "Active"
  }
]
```

## 2. POST /api/groups/permissions
- เพิ่ม Permission ให้กลุ่ม

## 3. PUT /api/groups/permissions/{id}
- แก้ไข Permission

## 4. DELETE /api/groups/permissions/{id}
- ลบ Permission

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- มี status และ message ในทุก response