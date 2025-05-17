SELECT 
  COUNT(*) as failed_payments,
  SUM(CASE WHEN recovered THEN 1 ELSE 0 END) as recovered,
  recovery_method 
FROM payments 
GROUP BY recovery_method