# Support Report - Fields

| Field Name        | Data Type | Description                         | Example Value         |
|-------------------|-----------|-------------------------------------|-----------------------|
| report_id         | String    | รหัสรายงาน                         | REP-SPT-001           |
| ticket_id         | String    | รหัส Ticket ปัญหา                   | SUP-002               |
| submission_date   | Date      | วันที่แจ้งปัญหา                     | 2024-01-11            |
| submission_time   | Time      | เวลาแจ้งปัญหา                       | 09:00                 |
| type              | Enum      | ประเภทปัญหา                         | การเงิน                |
| subject           | String    | หัวข้อปัญหา                         | ยอดเงินไม่ตรง          |
| description       | Text      | รายละเอียดปัญหา                     | ยอดเงินเข้าช้า         |
| requester_name    | String    | ชื่อผู้แจ้งปัญหา                    | วรัชญ์ สดใส            |
| requester_user_id | String    | รหัสผู้แจ้ง                         | USR-002               |
| contact           | String    | อีเมล/เบอร์โทรผู้แจ้ง               | warat@email.com       |
| status            | Enum      | สถานะ Ticket (Open/Closed/...)      | Closed                |
| handler           | String    | ผู้ดูแล Ticket                      | admin                 |
| resolution_date   | Date      | วันปิดเคส                           | 2024-01-12            |
| resolution_time   | Time      | เวลาปิดเคส                          | 11:00                 |
| remark            | String    | หมายเหตุเพิ่มเติม                    | แก้ไขแล้ว             |
