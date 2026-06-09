/* 

Create Database StudentManagementSystem1
1.Create Table student with attribute  StudentID (Primary Key)
Name
Age
Address

2.Create a table with named Feedback with attributes: 
FeedbackID (Primary Key) 
StudentID (Foreign key) 
Date 
InstructorName mysq
Feedback

(Add 5 Records in table)

*/ 

mysql> show databases;
+--------------------------+
| Database                 |
+--------------------------+
| information_schema       |
| mysql                    |
| performance_schema       |
| salesdb                  |
| studentmanagementsystem1 |
| sys                      |
+--------------------------+
6 rows in set (0.11 sec)

mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.03 sec)

mysql> USE StudentManagementSystem;
Database changed
mysql> CREATE TABLE student (StudentID INT PRIMARY KEY,Name VARCHAR(100), Age INT,Address VARCHAR(255));
Query OK, 0 rows affected (0.05 sec)

mysql> SHOW TABLES;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| student                           |
+-----------------------------------+
1 row in set (0.01 sec)

mysql> DESCRIBE student;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| StudentID | int          | NO   | PRI | NULL    |       |
| Name      | varchar(100) | YES  |     | NULL    |       |
| Age       | int          | YES  |     | NULL    |       |
| Address   | varchar(255) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> INSERT INTO student (StudentID, Name, Age, Address) VALUES (01, 'SAURABH', 21, '123 Main Street');
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM student;
+-----------+---------+------+-----------------+
| StudentID | Name    | Age  | Address         |
+-----------+---------+------+-----------------+
|         1 | SAURABH |   21 | 123 Main Street |
+-----------+---------+------+-----------------+
1 row in set (0.00 sec)


mysql> INSERT INTO student (StudentID, Name, Age, Address) VALUES (02, 'SAHIL', 21, 'Main Street');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO student (StudentID, Name, Age, Address) VALUES (03, 'ANIL', 21, 'Main Street');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO student (StudentID, Name, Age, Address) VALUES (04, 'ROHIT', 21, 'Main Street');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO student (StudentID, Name, Age, Address) VALUES (05, 'VED', 21, 'Main Street');
Query OK, 1 row affected (0.01 sec)


mysql> SELECT * FROM student;
+-----------+---------+------+-----------------+
| StudentID | Name    | Age  | Address         |
+-----------+---------+------+-----------------+
|         1 | SAURABH |   21 | 123 Main Street |
|         2 | SAHIL   |   21 | Main Street     |
|         3 | ANIL    |   21 | Main Street     |
|         4 | ROHIT   |   21 | Main Street     |
|         5 | VED     |   21 | Main Street     |
+-----------+---------+------+-----------------+
5 rows in set (0.00 sec)

mysql> CREATE TABLE Feedback (
    ->  FeedbackID INT PRIMARY KEY,StudentID INT, Date DATE,InstructorName VARCHAR(100),Feedback VARCHAR(500),FOREIGN KEY (StudentID) REFERENCES student(StudentID));
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO Feedback(FeedbackID, StudentID, Date, InstructorName, Feedback) VALUES(1, 01, '2026-06-08', 'Mrs.Rajeshri', 'Good.'),(2, 02, '2026-06-08', 'Mrs.Rajeshri', 'Good.'),(3, 03, '2026-06-08', 'Mrs.Rajeshri', 'EXcellent.'),(4, 04, '2026-06-08', 'Mrs.Rajeshri', 'Average.'),(5, 05, '2026-06-08', 'Mrs.Rajeshri', 'Good.');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Feedback;
+------------+-----------+------------+----------------+------------+
| FeedbackID | StudentID | Date       | InstructorName | Feedback   |
+------------+-----------+------------+----------------+------------+
|          1 |         1 | 2026-06-08 | Mrs.Rajeshri   | Good.      |
|          2 |         2 | 2026-06-08 | Mrs.Rajeshri   | Good.      |
|          3 |         3 | 2026-06-08 | Mrs.Rajeshri   | EXcellent. |
|          4 |         4 | 2026-06-08 | Mrs.Rajeshri   | Average.   |
|          5 |         5 | 2026-06-08 | Mrs.Rajeshri   | Good.      |
+------------+-----------+------------+----------------+------------+
5 rows in set (0.01 sec)

mysql>