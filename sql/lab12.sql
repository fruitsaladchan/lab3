SELECT CONCAT(course_name, '-', semester) AS course_semester
FROM courses;

--couress with lab on friday
SELECT course_id, course_name, lab_time
FROM labs
WHERE lab_day = 'Friday';

--upcomming assignments
SELECT title, due_date
FROM assignments
WHERE due_date > CURRENT_DATE;

--by status
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

--longeset course name
SELECT course_name
FROM courses
ORDER BY LENGTH(course_name) DESC
LIMIT 1;

--upercase
SELECT UPPER(course_name) AS uppercase_course_name
FROM courses;

--due in sept
SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';


--missing
SELECT title
FROM assignments
WHERE due_date IS NULL;

