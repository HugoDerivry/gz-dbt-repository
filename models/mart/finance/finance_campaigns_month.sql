SELECT

DATE_TRUNC(date_date,MONTH) as datemonth
, SUM(ads_margin) as ads_margin
, AVG(average_basket) as average_basket
, SUM(operational_margin) as operational_margin
, SUM(ads_cost) as ads_cost
, SUM(impression) as ads_impression
, SUM(click) as ads_clicks
, SUM(quantity) as quantity
, SUM(revenue) as revenue
, SUM(purchase_cost) as purchase_cost
, SUM(margin) as margin
, SUM(shipping_fee) as shipping_fee
, SUM(logcost) as logcost
, SUM(ship_cost) as ship_cost

FROM {{ ref('finance_campaigns_day') }}
GROUP BY datemonth