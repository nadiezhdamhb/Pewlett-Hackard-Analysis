-- Deliverable 1: The Number of Retiring Employees by Title
-- create a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955.
SELECT e.emp_no,
		e.first_name,
		e.last_name,
		t.title,
		t.from_date,
		t.to_date
INTO retirement_titles FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' and '1955-12-31')
ORDER BY e.emp_no;

SELECT * FROM retirement_titles

-- remove duplicates and keep only the most recent title of each employee.
-- Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (rt.emp_no) 
		rt.emp_no,
		rt.first_name,
		rt.last_name,
		rt.title
INTO unique_titles FROM retirement_titles as rt
WHERE (to_date = '9999-01-01')
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles; 

-- retrieve the number of employees by their most recent job title who are about to retire.

SELECT count(ut.emp_no), ut.title
INTO retiring_titles FROM unique_titles as ut
GROUP BY ut.title
ORDER BY count (ut.emp_no) DESC;

SELECT * FROM retiring_titles


-- Deliverable 2: The Employees Eligible for the Mentorship Program
-- create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibilty FROM employees e
INNER JOIN dept_emp as de on (e.emp_no = de.emp_no)
INNER JOIN titles as t on (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' and '1965-12-31') and (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

SELECT * FROM mentorship_eligibilty
