select
  mc.name as "納入先"
 ,mm.name
 ,mm.vintage
 ,co.name
 ,mm.capacity
 ,sd.number_of_bottles
 ,sd.amount
from
  sales_slip_headers sh
  inner join sales_slip_details sd
    on sh.voucher_number = sd.voucher_number
  left join delivery_destinations md
    on md.cd = sh.delivery_destination_cd
  left join billing_recipients mb
    on mb.cd = md.billing_recipient_cd
  left join contractors mc
    on mc.cd = mb.contractor_cd
  left join merchandises mm
    on mm.cd = sd.merchandise_cd
  left join colors co
    on co.cd = mm.color_cd
;

