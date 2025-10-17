# Member Level & Point System API

## 1. GET /api/member-levels
- รายการระดับสมาชิกทั้งหมด
```json
[
  {
    "level_id": "LV-001",
    "member_level_name": "Gold",
    "minimum_points": 1000,
    "point_rate": 25,
    "status": "Active"
  }
]
```

## 2. POST /api/member-levels
- เพิ่ม Member Level ใหม่

## 3. PUT /api/member-levels/{id}
- แก้ไข Member Level

## 4. DELETE /api/member-levels/{id}
- ลบ Member Level

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message ในทุก response