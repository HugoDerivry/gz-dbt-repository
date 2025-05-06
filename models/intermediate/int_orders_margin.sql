SELECT
orders_id
, date_date
, SUM(revenue) as revenue
, SUM(quantity) as quantity
, SUM(purchase_cost) as purchase_cost
, SUM(margin) as margin

FROM {{ ref('int_sales_margin') }}
WHERE orders_id = 1002561
GROUP BY orders_id, date_date