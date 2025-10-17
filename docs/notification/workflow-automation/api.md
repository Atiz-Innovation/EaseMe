# API สำหรับจัดการ Workflow Automation

## 1. สร้าง Workflow ใหม่

**Endpoint:**
POST /api/v1/notification/workflow-automation

**Request Body:**
```json
{
  "name": "แจ้งเตือนวันเกิดลูกค้า",
  "description": "ส่ง SMS วันเกิด",
  "is_active": true,
  "trigger_type": "birthday",
  "trigger_config": { "days_before": 0 },
  "actions": [
    { "type": "send_sms", "template_id": "tmp001" }
  ]
}
```

**Response:**
```json
{
  "id": "wf-8f3d1c2a",
  "created_at": "2025-10-16T08:00:00Z"
}
```

---

## 2. แก้ไข Workflow

**Endpoint:**
PUT /api/v1/notification/workflow-automation/{id}

**Request Body:**
```json
{
  "name": "แจ้งเตือนวันเกิดลูกค้า (แก้ไข)",
  "description": "ส่ง SMS วันเกิดและอีเมล",
  "is_active": true,
  "trigger_config": { "days_before": 1 },
  "actions": [
    { "type": "send_sms", "template_id": "tmp001" },
    { "type": "send_email", "template_id": "tmpB01" }
  ]
}
```

**Response:**
```json
{
  "updated_at": "2025-10-17T09:00:00Z"
}
```

---

## 3. ลบ Workflow

**Endpoint:**
DELETE /api/v1/notification/workflow-automation/{id}

**Response:**
```json
{
  "success": true
}
```

---

## 4. ดูรายการ Workflow ทั้งหมด

**Endpoint:**
GET /api/v1/notification/workflow-automation

**Response:**
```json
[
  {
    "id": "wf-8f3d1c2a",
    "name": "แจ้งเตือนวันเกิดลูกค้า",
    "description": "ส่ง SMS อวยพรวันเกิดอัตโนมัติ",
    "is_active": true,
    "trigger_type": "birthday",
    "trigger_config": { "days_before": 0 },
    "actions": [
      { "type": "send_sms", "template_id": "tmp001" }
    ]
  }
]
```

## หมายเหตุการใช้งาน API
- ต้องตรวจสอบสิทธิ์ผู้ใช้งานก่อนเรียก API ทุกครั้ง
- สามารถเพิ่ม action ได้หลายรายการในแต่ละ workflow
- trigger_type และ trigger_config ต้องสอดคล้องกัน
