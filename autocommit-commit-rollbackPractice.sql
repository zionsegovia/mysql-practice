USE mydb;

# update employee table

#UPDATE employees
#SET hourly_pay = 10.25,
#    hire_date = "2023-01-07"
#WHERE employee_id = 6;

# delete from epmployee table
# **BE SURE TO ADD WHERE CAUSE OR THE ENTIRE TABLE WILL BE DELETED**

DELETE FROM employees
WHERE employee_id = 6;

SELECT * FROM employees




