# Income & Sales Report API

## 1. GET /api/reports/income-sales
- Query: date, store, status, payment_method, channel
- Response:
```json
[
  {
    "report_id": "REP-001",
    "report_date": "2024-03-01",
    "store_name": "ABC Clinic",
    "merchant_id": "MCH-001",
    "transaction_id": "TXN-10001",
    "product_service": "เลเซอร์หน้าใส",
    "item_sold": 10,
    "sale_amount": 10000,
    "gp": 2000,
    "commission": 500,
    "payment_gateway_fee": 100,
    "net_revenue": 9400,
    "transaction_status": "Success",
    "payment_method": "QR",
    "channel": "Marketplace",
    "operator": "admin",
    "transaction_date": "2024-03-01",
    "transaction_time": "10:01"
  }
]
```

## 2. GET /api/reports/income-sales/export
- Export รายงานเป็น CSV หรือ Excel
- Query: เหมือน /api/reports/income-sales

## หมายเหตุ
- ทุก API ต้อง Authen ด้วย Bearer Token
- Response มี status และ message เสมอ
