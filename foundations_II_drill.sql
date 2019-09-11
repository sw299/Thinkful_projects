--question1
SELECT DISTINCT country
FROM ksprojects;

--question2
SELECT COUNT(DISTINCT main_category), COUNT(DISTINCT category)
FROM ksprojects;

--question3
SELECT DISTINCT main_category, category
FROM ksprojects
ORDER BY main_category ASC;

--question4
SELECT main_category, COUNT(DISTINCT category)
FROM ksprojects
GROUP BY main_category;

--question5
SELECT main_category, ROUND(AVG(backers), 0)
FROM ksprojects
GROUP BY main_category;

--question6
SELECT category, COUNT(state), AVG(usd_pledged-goal)
FROM ksprojects
WHERE state = 'successful'
GROUP BY category;

--question7
SELECT main_category, COUNT(backers), MAX(goal)
FROM ksprojects
WHERE backers = 0
GROUP BY main_category;

--question8
SELECT category, avg(usd_pledged/NULLIF(backers,0)) AS average
FROM ksprojects
GROUP BY category
HAVING avg(usd_pledged/NULLIF(backers,0))<50
ORDER BY average DESC;

--question9
SELECT main_category, COUNT(*)
FROM ksprojects
where state = 'successful' AND backers BETWEEN 5 AND 10
GROUP BY main_category;

--question10
SELECT currency, SUM(pledged)
FROM ksprojects
GROUP BY currency
ORDER BY SUM(pledged) DESC;

--question11
SELECT main_category, SUM(backers)
FROM ksprojects
WHERE main_category NOT IN('Games','Technology')	
	AND state = 'successful'
GROUP BY main_category
HAVING (SUM(backers)>100000)
ORDER BY main_category ASC;






