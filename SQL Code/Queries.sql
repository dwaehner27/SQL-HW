{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "--1. List the following details of each employee: employee number, last name, first name, sex, and salary.\n",
    "SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary\n",
    "FROM employees e\n",
    "LEFT JOIN salaries s\n",
    "ON e.emp_no = s.emp_no\n",
    "\n",
    "\n",
    "--2. List first name, last name, and hire date for employees who were hired in 1986.\n",
    "SELECT first_name, last_name, hire_date\n",
    "FROM employees\n",
    "WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31'\n",
    "\n",
    "--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.\n",
    "SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name \n",
    "FROM employees e\n",
    "INNER JOIN dept_manager dm ON e.emp_no = dm.emp_no\n",
    "LEFT JOIN departments d ON dm.dept_no = d.dept_no\n",
    "\n",
    "--4. List the department of each employee with the following information: employee number, last name, first name, and department name.\n",
    "SELECT e.emp_no, e.last_name, e.first_name, d.dept_name\n",
    "FROM employees e\n",
    "INNER JOIN dept_emp de ON e.emp_no = de.emp_no\n",
    "LEFT JOIN departments d ON de.dept_no = d.dept_no\n",
    "\n",
    "--5. List first name, last name, and sex for employees whose first name is \"Hercules\" and last names begin with \"B.\"\n",
    "SELECT first_name, last_name, sex\n",
    "FROM employees\n",
    "WHERE first_name = 'Hercules' AND last_name LIKE 'B%'\n",
    "\n",
    "--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.\n",
    "SELECT e.emp_no, e.last_name, e.first_name, d.dept_name\n",
    "FROM employees e\n",
    "INNER JOIN dept_emp de ON e.emp_no = de.emp_no\n",
    "LEFT JOIN departments d ON de.dept_no = d.dept_no\n",
    "WHERE d.dept_name = 'Sales'\n",
    "\n",
    "--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.\n",
    "SELECT e.emp_no, e.last_name, e.first_name, d.dept_name\n",
    "FROM employees e\n",
    "INNER JOIN dept_emp de ON e.emp_no = de.emp_no\n",
    "LEFT JOIN departments d ON de.dept_no = d.dept_no\n",
    "WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'\n",
    "\n",
    "--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.\n",
    "SELECT last_name, COUNT(last_name) AS last_name_frequency\n",
    "FROM employees \n",
    "GROUP BY last_name\n",
    "ORDER BY last_name_frequency DESC"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.8.5"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 4
}
