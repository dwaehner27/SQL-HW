{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "metadata": {},
   "outputs": [
    {
     "ename": "SyntaxError",
     "evalue": "invalid syntax (<ipython-input-1-efd666c1b98f>, line 1)",
     "output_type": "error",
     "traceback": [
      "\u001b[1;36m  File \u001b[1;32m\"<ipython-input-1-efd666c1b98f>\"\u001b[1;36m, line \u001b[1;32m1\u001b[0m\n\u001b[1;33m    DROP TABLE IF EXISTS dept_emp;\u001b[0m\n\u001b[1;37m         ^\u001b[0m\n\u001b[1;31mSyntaxError\u001b[0m\u001b[1;31m:\u001b[0m invalid syntax\n"
     ]
    }
   ],
   "source": [
    "DROP TABLE IF EXISTS dept_emp;\n",
    "DROP TABLE IF EXISTS dept_manager;\n",
    "DROP TABLE IF EXISTS departments;\n",
    "DROP TABLE IF EXISTS salaries;\n",
    "DROP TABLE IF EXISTS employees;\n",
    "DROP TABLE IF EXISTS titles;\n",
    "\n",
    "CREATE TABLE titles (\n",
    "\ttitle_id VARCHAR(5) PRIMARY KEY NOT NULL,\n",
    "\ttitle TEXT NOT NULL\n",
    ");\n",
    "\n",
    "CREATE TABLE employees (\n",
    "  \temp_no INT PRIMARY KEY NOT NULL,\n",
    "  \temp_title_id VARCHAR(5) NOT NULL,\n",
    "  \tbirth_date DATE,\n",
    "  \tfirst_name VARCHAR(30),\n",
    "  \tlast_name VARCHAR(30),\n",
    "  \tsex VARCHAR(1),\n",
    "  \thire_date DATE,\n",
    "\tFOREIGN KEY (emp_title_id) REFERENCES titles(title_id)\n",
    ");\n",
    "\n",
    "CREATE TABLE salaries (\n",
    " \temp_no INT PRIMARY KEY NOT NULL,\n",
    "  \tsalary INT NOT NULL,\n",
    "\tFOREIGN KEY (emp_no) REFERENCES employees(emp_no)\n",
    ");\n",
    "\n",
    "CREATE TABLE departments (\n",
    "\tdept_no VARCHAR(4) PRIMARY KEY NOT NULL,\n",
    "\tdept_name VARCHAR(30) NOT NULL\n",
    ");\n",
    "\n",
    "CREATE TABLE dept_emp (\n",
    "\temp_no INT NOT NULL,\n",
    "\tdept_no VARCHAR(5) NOT NULL,\n",
    "\tPRIMARY KEY(emp_no,dept_no),\n",
    "\tFOREIGN KEY (emp_no) REFERENCES employees(emp_no),\n",
    "\tFOREIGN KEY (dept_no) REFERENCES departments(dept_no)\n",
    ");\n",
    "\n",
    "CREATE TABLE dept_manager (\n",
    "\tdept_no VARCHAR(5) NOT NULL,\n",
    "\temp_no INT PRIMARY KEY NOT NULL,\n",
    "\tFOREIGN KEY (emp_no) REFERENCES employees(emp_no),\n",
    "\tFOREIGN KEY (dept_no) REFERENCES departments(dept_no)\n",
    ");\n",
    "\n",
    "SELECT * FROM titles;\n",
    "SELECT * FROM employees;\n",
    "SELECT * FROM salaries;\n",
    "SELECT * FROM departments;\n",
    "SELECT * FROM dept_emp;\n",
    "SELECT * FROM dept_manager;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
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
