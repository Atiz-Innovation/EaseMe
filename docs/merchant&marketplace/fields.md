# Merchant & Marketplace Management – Fields

| Field Name         | Data Type | Description                                  | Example Value         |
|--------------------|-----------|----------------------------------------------|----------------------|
| merchant_id        | String    | รหัสร้านค้า                                 | MCH-001              |
| store_name         | String    | ชื่อร้านค้า                                 | ABC Clinic           |
| store_type         | Enum      | ประเภท (คลินิก/สปา/ซาลอน/อื่นๆ)            | คลินิก               |
| status             | Enum      | สถานะร้านค้า (Active/Inactive/Pending)      | Active               |
| account_manager    | String    | ผู้ดูแล/เซลล์ร้าน                           | John Smith           |
| account_manager_email | String | อีเมลผู้ดูแล/เซลล์ร้าน                      | john@email.com       |
| account_manager_phone | String | เบอร์ผู้ดูแล/เซลล์ร้าน                      | 0811112233           |
| store_phone        | String    | เบอร์โทรร้าน                                 | 021234567            |
| store_email        | String    | อีเมลร้าน                                    | abc@email.com        |
| province           | String    | จังหวัด/เขต                                  | กรุงเทพมหานคร      |
| branch_count       | Number    | จำนวนสาขา                                    | 3                    |
| onboard_date       | Date      | วันที่ Onboard                                | 2024-01-01           |
| go_live_date       | Date      | วันที่เปิดใช้งานระบบ                         | 2024-01-15           |
| number_of_skus     | Number    | จำนวน SKU/สินค้า/บริการ                      | 25                   |
| document_status    | Enum      | สถานะเอกสาร (ครบ/ไม่ครบ)                    | ครบ                  |
| team_org_id        | String    | รหัสทีม/องค์กร (Partner/Franchise/Org)       | ORG-01               |
| team_org_name      | String    | ชื่อทีม/องค์กร                               | ATIZ Partner A       |
| referral_code      | String    | รหัส Partner/Referrer                        | PRT-001              |
| referral_name      | String    | ชื่อ Partner/Referrer                        | ATIZ Partner A       |
| join_date_by_partner| Date     | วันที่ join ผ่าน Partner                      | 2024-01-10           |
| banner_list        | Array     | รายการ Banner ที่เกี่ยวข้องกับร้านค้า         | ["BN-001", "BN-003"] |
| top_shop_flag      | Boolean   | เป็น Top Shop หรือไม่                         | true                 |
| highly_recommended_deals | Array| รายการดีลแนะนำร้านนี้                        | ["DEAL-01"]          |
| coupon_list        | Array     | รายการคูปองของร้านนี้                        | ["COUP-01"]          |
| quick_link_list    | Array     | รายการ Quick Link ที่ร้านนี้มี                | ["QL-01"]            |
| commission_rate    | Number    | ค่าคอมมิชชั่น (%)                            | 10                   |
| payment_gateway    | String    | ระบบ Payment Gateway ที่ใช้                   | Omise                |
| edit_button        | Button    | ปุ่มแก้ไขข้อมูลร้านค้า                       | -                    |
| view_button        | Button    | ปุ่มดูรายละเอียดร้านค้า                      | -                    |
| export_button      | Button    | ปุ่มส่งออกข้อมูลร้านค้า                      | -                    |
| delete_button      | Button    | ปุ่มลบร้านค้า                                | -                    |
