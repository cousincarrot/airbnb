SELECT
	neighborhood,
	COUNT(neighborhood),
	TOTAL(reviews_per_month),
	(CASE WHEN TOTAL(reviews_per_month) > COUNT(neighborhood)
		THEN TOTAL(reviews_per_month)/COUNT(neighborhood)
		ELSE 'Null'
		END) reviews_per_count
FROM
	listings
GROUP BY 1
ORDER BY TOTAL(reviews_per_month) DESC