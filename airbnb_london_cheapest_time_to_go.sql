SELECT 
	strftime('%m', reviews.review_date) AS reviews_by_month,
	AVG(listings.price)
FROM 
	reviews
JOIN 
	listings
ON 
	reviews.id = listings.id
GROUP BY reviews_by_month
ORDER BY AVG(listings.price)