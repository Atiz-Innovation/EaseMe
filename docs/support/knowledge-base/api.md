# Knowledge Base API

## 1. GET /api/[endpoint]
- รายการข้อมูลทั้งหมด
```json
[
  {
    "field_1": "ตัวอย่างข้อมูล 1",
    "field_2": 123
  }
]
```

## 2. GET /api/[endpoint]/{id}
- รายละเอียดข้อมูล

## 3. POST /api/[endpoint]
- สร้างข้อมูลใหม่

## 4. PUT /api/[endpoint]/{id}
- แก้ไขข้อมูล

## 5. DELETE /api/[endpoint]/{id}
- ลบข้อมูล

## 6. GET /api/[endpoint]/export
- ส่งออกข้อมูล (CSV/Excel)

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message เสมอ
