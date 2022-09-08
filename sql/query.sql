SELECT
  ProductTable.product,
  COUNT(SalesReceipts.product_id) AS totalSold
FROM
  `famous-vista-361810.team_mega_dataset.Product` AS ProductTable
INNER JOIN `famous-vista-361810.team_mega_dataset.SalesReceipts` AS SalesReceipts
  ON ProductTable.product_id = SalesReceipts.product_id
GROUP BY
  ProductTable.product
ORDER BY
  totalSold ASC
LIMIT 10;
