SELECT 
	strftime('%m', review_date) AS reviews_by_month,
	COUNT(*)
FROM 
	reviews
GROUP BY reviews_by_month
ORDER BY COUNT(*) DESC