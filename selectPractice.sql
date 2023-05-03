USE mydb;

# *select specific data by ID*

#SELECT first_name, last_name FROM employees
#WHERE employee_id =1;

#SELECT * FROM employees
#WHERE first_name = "Spongebob";

#SELECT * FROM employees
#WHERE hourly_pay <= 15;

#SELECT * FROM employees
#WHERE hire_date <= "2023-01-04";

# *NOT OPERATOR*

#SELECT * FROM employees
#WHERE employee_id != 1;

# *USING NULL*
# **IN MYSQL YOU MUST USE
# IS NOT INSTEAD OF =**

SELECT * FROM employees
WHERE hire_date IS NULL;

