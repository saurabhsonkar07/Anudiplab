Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order

mysql> create database StudentInfo;
Query OK, 1 row affected (0.01 sec)

mysql> use StudentInfo;
Database changed
mysql> create table Student(StudentID int not null primary key, First_Name varchar(50) not null, LastName varchar(50) not null,Age int not null, PHoneNO double not null,Address Varchar(50) not null);
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO Student (StudentID, First_Name, LastName, Age, Phoneno, Address)
    -> VALUES
    -> (1, 'Amit', 'Sharma', 20, '9876543210', 'Mumbai'),
    -> (2, 'Priya', 'Patel', 22, '9123456780', 'Ahmedabad'),
    -> (3, 'Rahul', 'Verma', 19, '9988776655', 'Delhi'),
    -> (4, 'Sneha', 'Rao', 21, '9765432109', 'Bangalore'),
    -> (5, 'Karan', 'Mehta', 23, '9345678901', 'Pune');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Student;
+-----------+------------+----------+-----+------------+-----------+
| StudentID | First_Name | LastName | Age | PHoneNO    | Address   |
+-----------+------------+----------+-----+------------+-----------+
|         1 | Amit       | Sharma   |  20 | 9876543210 | Mumbai    |
|         2 | Priya      | Patel    |  22 | 9123456780 | Ahmedabad |
|         3 | Rahul      | Verma    |  19 | 9988776655 | Delhi     |
|         4 | Sneha      | Rao      |  21 | 9765432109 | Bangalore |
|         5 | Karan      | Mehta    |  23 | 9345678901 | Pune      |
+-----------+------------+----------+-----+------------+-----------+
5 rows in set (0.00 sec)

mysql> select * from Student order by LastName;
+-----------+------------+----------+-----+------------+-----------+
| StudentID | First_Name | LastName | Age | PHoneNO    | Address   |
+-----------+------------+----------+-----+------------+-----------+
|         5 | Karan      | Mehta    |  23 | 9345678901 | Pune      |
|         2 | Priya      | Patel    |  22 | 9123456780 | Ahmedabad |
|         4 | Sneha      | Rao      |  21 | 9765432109 | Bangalore |
|         1 | Amit       | Sharma   |  20 | 9876543210 | Mumbai    |
|         3 | Rahul      | Verma    |  19 | 9988776655 | Delhi     |
+-----------+------------+----------+-----+------------+-----------+
5 rows in set (0.00 sec)

mysql>

