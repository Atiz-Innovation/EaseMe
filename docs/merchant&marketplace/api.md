# Merchant & Marketplace Management API Spec

## 1. GET /api/merchants
- ดึงรายการร้านค้าทั้งหมด
- Query: search, filter (type, status, manager, province, date)
```json
[
  {
    "merchant_id": "MCH-001",
    "store_name": "ABC Clinic",
    "status": "Active",
    "store_type": "คลินิก"
  }
]
```

## 2. GET /api/merchants/{id}
- ดึงรายละเอียดร้านค้า
```json
{
  "merchant_id": "MCH-001",
  "store_name": "ABC Clinic",
  "store_type": "คลินิก",
  "status": "Active",
  "account_manager": "John Smith",
  "commission_rate": 10,
  "banner_list": ["BN-001"],
  "top_shop_flag": true,
  ...
}
```

## **3 POST /api/merchants**
**เพิ่มร้านค้าใหม่**

- **Request Body** (application/json)
```json
{
  "store_name": "ABC Clinic",
  "store_type": "คลินิก",
  "status": "Active",
  "account_manager": " Smith",
  "account_manager_email": "john@email.com",
  "account_manager_phone": "0811112233",
  "store_phone": "021234567",
  "store_email": "abc@email.com",
  "province": "กรุงเทพมหานคร",
  "branch_count": 3,
  "onboard_date": "2024-01-01",
  "go_live_date": "2024-01-15",
  "number_of_skus": 25,
  "document_status": "ครบ",
  "team_org_id": "-01",
  "referral_code": "PRT-001",
  "commission_rate": 10,
  "payment_gateway": "Omise"
}
```
- **Response**
```json
{
  "merchant_id": "MCH-002",
  "status": "success",
  "message": "เพิ่มร้านค้าเรียบร้อยแล้ว"
}
```

---

## **4. PUT /api/merchants/{id}**
**แก้ไขข้อมูลร้าน**

- **Request Body** (application/json)
```json
{
  "store_name": "ABC Clinic (อัปเดต)",
  "status": "Inactive",
  "account_manager": "Jane Doe",
  ...
}
```
- **Response**
```json
{
  "merchant_id": "MCH-001",
  "status": "success",
  "": "แก้ไขข้อมูลร้านค้าเรียบร้อยแล้ว"
}
```

---

## **5. DELETE /api/merchants/{id}**
**ลบร้านค้า**

- **Request ไม่มี Body**
- **Response**
```json
{
  "merchant_id": "CH-001",
  "status": "success",
  "message": "ลบร้านค้าเรียบร้อยแล้ว"
}
```

---

## **6. GET /api/merchants/{id}/banners**
**ดู/จัดการ Banner ของร้าน**

- **Response**
```json
{
  "merchant_id": "MCH-001",
  "banners": [
    {
      "banner_id": "BN-001",
      "banner_name": "Summer Sale",
      "image_url": "https://img.server.com/banner1.jpg",
      "_date": "2024-03-01",
      "end_date": "2024-04-01",
      "status": "Active"
    },
    {
      "banner_id": "BN-002",
      "banner_name": "Super Clinic",
      "image_url": "https://img.server.com/banner2.jpg",
      "start_date": "2024-05-01",
      "end_date": "2024-06-01",
      "status": "Inactive"
    }
  ]
}
```

---

## **7. PATCH /apimerchants/{id}/status**
**เปลี่ยนสถานะร้านค้า**

- **Request Body**
```json
{
  "status": "Inactive"
}
```
- **Response**
```json
{
  "merchant_id": "MCH-001",
  "status": "success",
  "message": "เปลี่ยนสถานะร้านค้าสำเร็จ"
}
```

---

## **8. POST /api/merchants/{id}/assign-team**
**กำหนดทีม/Partner ให้ร้าน**

- **Request Body**
```json
{
  "team_org_id": "ORG-02"
}
```
- **Response**
```json
{
  "merchant_id": "MCH-001",
  "status": "success",
  "message": "Assign ทีม/Partner ให้ร้านค้าสำเร็จ"
}
```

---

## **9. GET /api/merchants/{id}/coupons**
**ดึงคูปองที่ร้านค้าใช้**

- **Response**
```json
{
  "merchant_id": "MCH-001",
  "coupons": [
    {
 "coupon_id": "COUP-001",
      "coupon_name": "ส่วนลด 100 บาท",
      "discount_amount": 100,
      "expiry_date": "2024-06-30",
      "status": "Active"
    },
    {
      "coupon_id": "COUP-002",
      "coupon_name": "Flash Sale",
      "discount_amount": 50,
      "expiry_date": "2024-04-30",
      "status": "Inactive"
    }
  ]
}
```

---

## **10. GET /apimerchants/{id}/deals**
**ดึง Highly Recommended Deals**

- **Response**
```json
{
  "merchant_id": "MCH-001",
  "deals": [
    {
      "deal_id": "DEAL-001",
      "product_service_name": "เลเซอร์หน้าใส",
      "priority": 1,
      "status": "Active",
      "set_date": "2024-03-01"
    },
    {
      "deal_id": "DEAL-002",
      "product_service_name": "Bot Promotion",
      "priority": 2,
      "status": "Active",
      "set_date": "2024-03-10"
    }
  ]
}
```

## หมายเหตุ
- ทุก API ต้องใช้ Bearer Token Authentication
- Response ทุกรายการควร Mask ข้อมูลสำคัญตามสิทธิ์ผู้ใช้
