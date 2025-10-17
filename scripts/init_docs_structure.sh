#!/bin/bash

# รายชื่อเมนูหลักและซับเมนู (เพิ่ม/ลดได้ตามต้องการ)
menus=(
  "dashboard"

  "merchant"
  "merchant/top-shops"
  "merchant/highly-recommended-deals"
  "merchant/service-groups"
  "merchant/banner-management"
  "merchant/coupon-management"
  "merchant/quick-link"

  "transaction"
  "transaction/payment-gateway"
  "transaction/commission-setting"

  "membership"
  "membership/member-management"
  "membership/admin-user-management"
  "membership/member-level-point-system"
  "membership/organization-team-list"
  "membership/member-in-team-org"
  "membership/group-permission-setting"

  "coupon"
  "coupon/coupon-management"
  "coupon/membership-card"
  "coupon/promotion"
  "coupon/discount-code"
  "coupon/buy-x-get-y"
  "coupon/next-order-coupon"
  "coupon/gift-card"
  "coupon/ewallet"

  "package"
  "package/renewal-management"

  "support"
  "support/ticket"
  "support/knowledge-base"

  "report"
  "report/usage-report"
  "report/income-sales-report"
  "report/member-package-report"
  "report/new-member-report"
  "report/support-report"

  "notification"
  "notification/settings"
  "notification/workflow-automation"

  "system"
  "system/ui-guideline-theme"
  "system/integration-settings"
)

# รายชื่อไฟล์มาตรฐานที่ต้องมีในแต่ละเมนู/ซับเมนู
files=(
  "fields.md"
  "user-guide.md"
  "api.md"
  "test-case.md"
  "flow-diagram.md"
  "state-diagram.md"
  "README.md"
)

base_path="docs"

for menu in "${menus[@]}"
do
  dir="$base_path/$menu"
  mkdir -p "$dir"
  for file in "${files[@]}"
  do
    touch "$dir/$file"
    # ใส่หัวข้ออัตโนมัติใน README.md ให้ด้วย
    if [[ "$file" == "README.md" ]]; then
      echo "# $(echo $menu | sed -E 's/\b(.)/\u\1/g' | tr '-' ' ')" > "$dir/$file"
      echo -e "\nSee: fields.md, user-guide.md, api.md, test-case.md, flow-diagram.md, state-diagram.md" >> "$dir/$file"
    fi
  done
done

echo "สร้างโฟลเดอร์/ไฟล์สำหรับเอกสารแต่ละเมนูสำเร็จแล้ว!"
