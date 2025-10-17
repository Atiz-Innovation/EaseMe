# Member Package Report API

## 1. GET /api/reports/member-package
- Query: date, package, status
- Response:
```json
[
  {
    "report_id": "REP-MBR-001",
    "report_date": "2024-03-01",
    "package_name": "Gold Package",
    "package_id": "PKG-001",
    "enrolled_users": 200,
    "new_users": 50,
    "total_revenue": 500000,
    "expiry_date": "2025-06-30",
    "status": "Active"
  }
]
```

## 2. GET /api/reports/member-package/export
- Export รายงานเป็น CSV/Excel