SELECT
*
, iom.margin + rgs.shipping_fee - rgs.logcost - rgs.ship_cost AS operational_margin

FROM {{ ref('int_orders_margin') }} as iom
LEFT JOIN {{ ref('stg_gz_raw_data__raw_gz_ship') }} as rgs
USING(orders_id)

