SELECT base_price_incl_tax, COUNT(*) FROM sales_flat_order_item i
INNER JOIN sales_flat_order o ON o.entity_id = i.order_id
WHERE status = 'complete' AND sku = 'mageunconf-2016'
GROUP BY base_price_incl_tax
