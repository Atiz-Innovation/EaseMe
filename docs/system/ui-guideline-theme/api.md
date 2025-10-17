# API สำหรับจัดการ UI Guideline Theme

## 1. สร้างธีมใหม่

**Endpoint:**
POST `/api/v1/system/ui-guideline-theme`

**Request Body:**
```json
{
  "name": "Light Theme",
  "description": "ธีมสีสว่างสำหรับระบบ",
  "primary_color": "#1976d2",
  "secondary_color": "#e3f2fd",
  "accent_color": "#ff9800",
  "background": "#fafafa",
  "font_family": "Prompt, Arial, sans-serif",
  "font_size": "16px",
  "border_radius": "8px",
  "spacing_unit": "4px"
}
```

**Response:**
```json
{
  "id": "theme-01",
  "created_at": "2025-10-16T08:00:00Z"
}
```

---

## 2. แก้ไขธีม

**Endpoint:**
PUT `/api/v1/system/ui-guideline-theme/{id}`

**Request Body:**
```json
{
  "description": "อัปเดตธีมสีสว่าง",
  "primary_color": "#2196f3",
  "font_size": "15px"
}
```

**Response:**
```json
{
  "updated_at": "2025-10-16T09:00:00Z"
}
```

---

## 3. เปิด/ปิดใช้งานธีม

**Endpoint:**
PATCH `/api/v1/system/ui-guideline-theme/{id}/activate`

**Request Body:**
```json
{
  "is_active": true
}
```

**Response:**
```json
{
  "success": true,
  "activated_theme_id": "theme-01"
}
```

---

## 4. ดูรายการธีมทั้งหมด

**Endpoint:**
GET `/api/v1/system/ui-guideline-theme`

**Response:**
```json
[
  {
    "id": "theme-01",
    "name": "Light Theme",
    "primary_color": "#1976d2",
    "secondary_color": "#e3f2fd",
    "is_active": true
  },
  {
    "id": "theme-02",
    "name": "Dark Theme",
    "primary_color": "#111111",
    "secondary_color": "#222222",
    "is_active": false
  }
]
```

---

## หมายเหตุการใช้งาน API
- สามารถเปิดใช้งานธีมเดียวเท่านั้นในระบบ หากเปิดธีมใหม่ ธีมเดิมจะถูกปิดอัตโนมัติ
- การแก้ไขหรือเปิด/ปิดธีมต้องใช้สิทธิ์แอดมิน
- ข้อมูลสีควรอยู่ในรูปแบบ Hex หรือ RGB ที่รองรับ CSS
