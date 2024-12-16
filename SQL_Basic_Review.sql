-- The BIG 6, the clauses must always be written in this order
-- S F W G H O, one way to remember the order is the pneumonic:
-- Start Friday With Grandma's Homemade Oatmeal
SELECT grade_level,
		AVG(gpa) AS avg_gpa
FROM students
WHERE school_lunch = 'Yes'
GROUP BY grade_level
HAVING avg_gpa < 3.3
ORDER BY grade_level;

-- common SQL keywords

SELECT DISTINCT grade_level  -- DISTINCT returns unique values
FROM students;

SELECT COUNT(DISTINCT grade_level)  -- aggregate functions like COUNT, SUM, AVG, MIN, MAX are used to make calculations
FROM students;

SELECT MAX(gpa) - MIN(gpa) AS gpa_range  -- Math operators include +, -, x, / ,%
FROM students;

SELECT *
FROM students
WHERE grade_level < 12 AND school_lunch = 'Yes';  -- Comparison operators include =, !=, <>, <, <=, >, >=

SELECT *
FROM students
WHERE grade_level IN (10, 11, 12);  -- Comparison keywords include, IN, LIKE, BETWEEN, AND, IS NULL and more

SELECT *
FROM students
WHERE email LIKE '%.com';

SELECT student_name, gpa
FROM students
ORDER BY gpa DESC;

SELECT *
FROM students
LIMIT 10;

-- CASE statements use the following syntax to do IF-ELSE logic with SQL:
-- CASE WHEN ... THEN ... WHEN ... THEN ... ELSE ... END
SELECT student_name, grade_level,
	   CASE WHEN grade_level = 9 THEN 'Freshman'
			WHEN grade_level = 10 THEN 'Sophomore'
            WHEN grade_level = 11 THEN 'Junior'
            ELSE 'Senior' END AS student_class
FROM students;