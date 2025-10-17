#### **api.md**
```markdown
# merchant/top-shops API

## 1. GET /api/merchant/top-shops
- ดึงรายการร้านค้าชั้นนำทั้งหมด

```json
[
  {
    "shop_id": "SHP0001",
    "shop_name": "ร้านกาแฟ Atiz",
    "total_sales": 120000,
    "rating": 4.7,
    "category": "อาหารและเครื่องดื่ม",
    "location": "สยามสแควร์",
    "status": "active"
  }
]
```

## 2. GET /api/merchant/top-shops/{shop_id}
- ดูรายละเอียดร้านค้าชั้นนำ

## 3. POST /api/merchant/top-shops
- เพิ่มร้านค้าชั้นนำใหม่

```json
{
  "shop_name": "ร้านขนมหวาน Atiz",
  "merchant_id": "MER002",
  "category": "ขนมหวาน",
  "location": "อโศก"
}
```

## 4. PUT /api/merchant/top-shops/{shop_id}
- แก้ไขข้อมูลร้านค้าชั้นนำ

## 5. DELETE /api/merchant/top-shops/{shop_id}
- ลบร้านค้าชั้นนำออกจากรายการ

## 6. GET /api/merchant/top-shops/export
- ส่งออกรายการร้านค้าชั้นนำเป็นไฟล์ CSV/Excel

## หมายเหตุ
- ทุก API ต้องมี Bearer Token ใน header เพื่อยืนยันตัวตน
- Response ทุก endpoint จะมี field "status" และ "message" เสมอ
- หากข้อมูลซ้ำหรือผิดพลาด จะส่ง error code กลับ
```
