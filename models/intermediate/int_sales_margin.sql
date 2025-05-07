SELECT *
, product.purchase_price*sales.quantity AS purchase_cost
, sales.revenue - product.purchase_price*sales.quantity AS margin

FROM {{ ref('stg_gz_raw_data__raw_gz_sales') }} AS sales
LEFT JOIN {{ ref('stg_gz_raw_data__raw_gz_product') }} AS product
    ON sales.product_id = product.products_id