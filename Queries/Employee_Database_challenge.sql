-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO uniquetitles
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;

#### For Deliverable #1
#### Steps 1-7
#### Current employees born between 1952 and 1955
SELECT employees.emp_no, employees.first_name, employees.last_name,
titles.title, titles.from_date, titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON titles.emp_no=employees.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER by employees.emp_no;

#### 8-15
#### Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, 
first_name, last_name, title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no ASC, to_date DESC;


#### 16-21
SELECT COUNT(unique_titles.title), unique_titles.title
INTO retiring_titles
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY unique_titles.count DESC;


#### Deliverabe #2
#### Mentorship Eligibility
SELECT DISTINCT ON (em.emp_no) em.emp_no, em.first_name, em.last_name, em.birth_date,
	dep.from_date, dep.to_date, ti.title
INTO mentorship_eligibility
FROM employees as em
INNER JOIN dept_emp as dep
ON em.emp_no = dep.emp_no
INNER JOIN titles as ti
ON em.emp_no = ti.emp_no
WHERE (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND dep.to_date = '9999-01-01'
ORDER BY emp_no;

select * from mentorship_eligibility;

