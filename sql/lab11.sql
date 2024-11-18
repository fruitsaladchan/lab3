--assignments for specific course
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

--earliest assignment due
SELECT MIN(due_date) AS earliest_due_date
FROM assignments;

--latest assignments due 
SELECT MAX(due_date) AS latest_due_date
FROM assignments;

--assignments due on certain date
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

-- all assignments in octover
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

--most recent 
SELECT MAX(due_date) AS most_recent_completed_due_date
FROM assignments
WHERE status = 'Completed';
