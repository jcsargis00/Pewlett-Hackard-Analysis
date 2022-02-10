# Pewlett-Hackard-Analysis
## PostgreSQL
### Planning for the Silver Tsunami
### Background
Pewlett Hackard is a very large corporation with a large group of employees nearing retirement age.  This problem has
been called the "Silver Tsunami." Management is concerned there will be massive job openings in a very short time frame.
Bobby has been tasked with putting together an analysis of the employee data to help answer questions about this potential issue.
#
Data has been collected into a series of csv files, but the individual files don't give enough information for the management team to know how many employees are close to retirement, and specifically, what areas do they work in and are they managers?
The company would like Bobby to put the data together and report more detailed information to help the company
make informed decisions in a few areas:
#
    * How many positions will be vacant soon
    * what positions will be vacant
    * What are the titles of the positions
    * How many will be managers
    * Would a mentorship program encourage some employees to stay on part time to train others
#
### Purpose
The purpose of this analysis is to determine the number of employees retiring and the number of possible mentors. Bobby can accomplish this by pieceing together existing csv files with an ERD diagram, creating matching tables, importing the data into a PostgresSQL database, determining tables to join together with primary and/or foreign keys, and creating and running queries of the data to bring out key findings.
#
#### Using Entity Relationship tools, an ERD is created to map out the data
#
This diagram maps out the relationships between the Department, Employee, Department Employee, Salary, Title and Manager csv files.
#
![ERD](https://github.com/jcsargis00/Pewlett-Hackard-Analysis/blob/main/ERD.PNG)
#### We can see several key relationshps that will allow datasets to be joined together in the database.
The tables were created to match the ERD.  The data was then imported into the database, putting Bobby in a spot
ready to start creating and running queries to answer key questions.
#
Data was imported from the following files: 
    - departments.csv, employees.csv, salaries.csv, dept_emp.csv, dept_manager.csv and titles.csv

#### The Number of Retiring Employees by Title
A query was written to find the number of retiring employees by title.  The first query returned every title, which produced multiple titles for employees who had changed jobs. There were 133776 titles.  Further refinement to the query was needed to remove multiple titles for each employee to get a more accurate count.
#
![not unique titles](https://github.com/jcsargis00/Pewlett-Hackard-Analysis/blob/main/Data/retirementtables.PNG)
#
The first few entries of the Unique Titles table can be seen below, the number is reduced to 72458, the true number
of employees elibible to retire when we count them correctly.
#
![unique titles](https://github.com/jcsargis00/Pewlett-Hackard-Analysis/blob/main/Data/unique_titles.PNG)
#
#### What titles are retiring?
#
![Titles Retiring](https://github.com/jcsargis00/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.PNG)
#
With 25,916 Senior Engineers and 24,926 Senior Staff eligible for retirment, many key openings will be open
in a short time window.
#
#### The Employees Eligible for the Mentorship Program
#
There are 1550 employees eligible to be mentors (criteria: current employee, birthday in 1965).
#
A sample of the results is shown below.
#
![mentors](https://github.com/jcsargis00/Pewlett-Hackard-Analysis/blob/main/Data/mentor.PNG)
#
### Conclusion
#
With 1550 employees eligible for the mentorship program, and 72,458 retirement-eligible employees in the company, there
are not nearly enough mentors for the next generation of Pewlett Hackard employees.  The problem is especially critical for the roles of Senior Engineers and Senior Staff.  Pewlett Hackard could expand the mentorship program to employees that have been with the company for 5 or more years, instead of limiting the program based on age.  Additionally, jobs could be targeted not to fill and recruitment could be stepped up.

