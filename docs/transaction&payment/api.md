# Transaction & Payment API Spec

## 1. GET /api/transactions
- ดึงรายการธุรกรรมทั้งหมด
- Query: search, filter (date, store, status, method, operator)
```json
[
  {
    "transaction_id": "TXN-10001",
    "transaction_date": "2024-03-01",
    "transaction_time": "13:45",
    "store_name": "ABC Clinic",
    "merchant_id": "MCH-001",
    "payment_method": "Credit Card",
    "transaction_status": "Success",
    "gmv": 1000
  }
]
```

## 2. GET /api/transactions/{id}
- ดึงรายละเอียดธุรกรรม
```json
{
  "transaction_id": "TXN-10001",
  "transaction_date": "2024-03-01",
  "transaction_time": "13:45",
  "store_name": "ABC Clinic",
  "merchant_id": "MCH-001",
  "customer_name": "สมชาย ใจดี",
  "product_service": "เลเซอร์หน้าใส",
  "payment_method": "Credit Card",
  "commission_rate": 10,
  "gmv": 1000,
  "gp": 100,
  "payment_gateway_fee": 15,
  "net_revenue": 85,
  "net_payout": 900,
  "transaction_status": "Success",
  "source": "Marketplace",
  "operator": "admin",
  "remark": "ลูกค้าชำระเงินล่าช้า"
}
```

## 3. PUT /api/transactions/{id}/status
- เปลี่ยนสถานะธุรกรรม
```json
{
  "status": "Pending",
  "remark": "รอยืนยันชำระเงิน"
}
```
- Response
```json
{
  "transaction_id": "TXN-10001",
  "transaction_status": "Pending",
  "message": "เปลี่ยนสถานะธุรกรรมสำเร็จ"
}
```

## 4. PUT /api/transactions/{id}/remark
- เพิ่มหรือแก้ไขหมายเหตุธุรกรรม
```json
{
  "remark": "แก้ไขยอดหลังตรวจสอบ"
}
```

## 5. GET /api/transactions/export
- Export รายการธุรกรรม (รองรับส่งออก CSV/Excel)
- Query: เหมือน /api/transactions

## 6. GET /api/transactions/statistics
- ข้อมูลสถิติ (ยอดขาย, GP, Net ฯลฯ) สำหรับกราฟ
```json
{
  "total_gmv": 120000,
  "total_gp": 20000,
  "total_net_revenue": 15000,
  "total_transactions": 180
}
```

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- ข้อมูลต้อง Mask ตามสิทธิ์ผู้ใช้
