SELECT
  *,
CONCAT(CAST(orders_id AS STRING), '_', CAST(pdt_id AS STRING)) AS order_product_id

FROM {{ source('gz_raw_data', 'raw_gz_sales') }}