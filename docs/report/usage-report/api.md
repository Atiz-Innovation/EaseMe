# Usage Report API

## 1. GET /api/reports/usage
- Query: date, store, status, package
- Response:
```json
[
  {
    "report_id": "REP-USG-001",
    "report_date": "2024-03-01",
    "store_name": "ABC Clinic",
    "merchant_id": "MCH-001",
    "user_count": 15,
    "branch_count": 3,
    "current_package": "Clinic Pro",
    "expiry_date": "2024-12-31",
    "total_transactions": 100,
    "gmv_total": 120000,
    "gp_total": 20000,
    "net_revenue": 15000,
    "status": "Active"
  }
]
```

## 2. GET /api/reports/usage/export
- Export รายงานเป็น CSV/Excel
