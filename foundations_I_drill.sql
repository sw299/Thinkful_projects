--question 1
SELECT COUNT(*)
FROM vehicles;

--question 2
SELECT *
FROM vehicles;

--question 3
SELECT id, make, model
from vehicles
WHERE year=2010;

--question4
SELECT COUNT(*)
FROM vehicles
WHERE year = 2010;

--question5
SELECT COUNT(*)
FROM vehicles
WHERE year BETWEEN 2010 AND 2015;

--question6
SELECT COUNT(*)
FROM vehicles
WHERE year IN (1990, 2000, 2010);

--question7
SELECT COUNT(*)
FROM vehicles
WHERE year BETWEEN 1987 AND 2005
	AND year NOT IN ('1990','2000');
	
--question8
SELECT year, make, model, (hwy+cty)/2 AS average_mpg
FROM vehicles;

--question9
SELECT year, model, CONCAT(hwy, 'highway', '; ', cty, 'city')
FROM vehicles;

--question10
SELECT id, make, model, year
FROM vehicles
WHERE cyl is NULL 
	or displ is NULL;

--question11
SELECT *
FROM vehicles
WHERE drive='Rear-Wheel Drive'
	AND fuel='Diesel'
	AND year >= 2000
ORDER BY year DESC, hwy DESC;

--question12
SELECT COUNT(*)
FROM vehicles
WHERE (make = 'Ford' OR make= 'Chevrolet')
	AND (class = 'Compact Cars' OR class = 'Two Seaters');
	
--question13
SELECT *
FROM vehicles
ORDER BY hwy DESC
limit 10;

--question14
SELECT *
FROM vehicles
WHERE year >=2000
	AND model LIKE 'X%'
ORDER BY make ASC;

SELECT *
FROM vehicles
WHERE year >2000
	AND model LIKE 'x%'
ORDER BY make ASC;

--question15
SELECT COUNT(*)
FROM vehicles
WHERE cyl is NULL;

--question16
SELECT COUNT(*)
FROM vehicles
WHERE year <2000 
	AND hwy > 20
	AND displ > 3;
	
--question17
SELECT *
FROM vehicles
WHERE model LIKE '__X';













