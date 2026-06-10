
mysql> create database BankAccount;
Query OK, 1 row affected (0.00 sec)

mysql> use BankAccount;
Database changed
mysql> create table BankAccount(AccountID int primary key not null,AccountHolderName varchar(50) not null,AccountBalance double not null);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into BankAccount values(1,'Saurabh Sonkar', 50000),(2,'Prashant Yadav',45000),(3,'Pooja Bite',60000),(4,'Pawan Pandey',55000),(5,'Sonia Pawar',65000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from BankAccount;
+-----------+-------------------+----------------+
| AccountID | AccountHolderName | AccountBalance |
+-----------+-------------------+----------------+
|         1 | Saurabh Sonkar    |          50000 |
|         2 | Prashant Yadav    |          45000 |
|         3 | Pooja Bite        |          60000 |
|         4 | Pawan Pandey      |          55000 |
|         5 | Sonia Pawar       |          65000 |
+-----------+-------------------+----------------+
5 rows in set (0.00 sec)

mysql> select AccountHolderName,AccountBalance from BankAccount;
+-------------------+----------------+
| AccountHolderName | AccountBalance |
+-------------------+----------------+
| Saurabh Sonkar    |          50000 |
| Prashant Yadav    |          45000 |
| Pooja Bite        |          60000 |
| Pawan Pandey      |          55000 |
| Sonia Pawar       |          65000 |
+-------------------+----------------+
5 rows in set (0.00 sec)

mysql> select AccountHolderName,AccountBalance from BankAccount where AccountBalance>30000;
+-------------------+----------------+
| AccountHolderName | AccountBalance |
+-------------------+----------------+
| Saurabh Sonkar    |          50000 |
| Prashant Yadav    |          45000 |
| Pooja Bite        |          60000 |
| Pawan Pandey      |          55000 |
| Sonia Pawar       |          65000 |
+-------------------+----------------+
5 rows in set (0.00 sec)

mysql> update BankAccount set AccountBalance=1000 where AccountID=1;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from BankAccount;
+-----------+-------------------+----------------+
| AccountID | AccountHolderName | AccountBalance |
+-----------+-------------------+----------------+
|         1 | Saurabh Sonkar    |           1000 |
|         2 | Prashant Yadav    |          45000 |
|         3 | Pooja Bite        |          60000 |
|         4 | Pawan Pandey      |          55000 |
|         5 | Sonia Pawar       |          65000 |
+-----------+-------------------+----------------+
5 rows in set (0.00 sec)

mysql>

