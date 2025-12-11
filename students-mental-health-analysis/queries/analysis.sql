SELECT stay , 
	COUNT(*) as count_int,
	ROUND(AVG(todep),2) AS average_phq, 
	ROUND(avg(tosc),2) AS average_scs , 
	ROUND(AVG(toas),2) AS average_as 
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;
