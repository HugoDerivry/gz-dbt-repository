SELECT
date_date
,f.operational_margin - c.ads_cost as ads_margin
,f.average_basket
,f.operational_margin
,c.ads_cost
,c.impression
,c.click
,f.quantity
,f.revenue
,f.purchase_cost
,f.margin
,f.shipping_fee
,f.logcost
,f.ship_cost
FROM {{ ref('int_campaigns') }} as c
LEFT JOIN {{ ref('finance_days') }} as f
USING(date_date) 

