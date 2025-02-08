---
tags:
  - Penetration-Testing
  - Web-Hacking
  - SQL-injection
---
# SQL Queries

## Select
Select tells the database that we want to retrieve data from the table(s)

### Examples
```SQL
select * from users;
```
- *select* tells the database we want to retrieve data
- * tells the database that we want to retrieve all columns
- *from users* indicates that the targeted table is named "users"

```SQL
select username,password from users;
```
- *username,password* indicates the columns to pull

## Limit
Limit allows the limiting of results and/or skipping a certain number of results in the table

### Examples
```SQL
select * from users LIMIT 1;
```
- *LIMIT 1* forces the database to only return the first row of data

```SQL
select * from users LIMIT 1,1;
```
- *LIMIT 1,1* forces the database to skip the first result, then return only the next result
	- **First number sets number of results to be skipped, second sets the # of rows to return**


## Where
Where creates a clause to filter data based on a conditional statement (ie true/false)

### Examples
```SQL
select * from users where username='admin';
```
- Only return results where the value in the username column is 'admin'
	- **where the conditional username='admin' is TRUE**

```SQL
select * from users where username!='admin'; 
```
- Only return results where the value in the username column is NOT 'admin'
	- **where the conditional username='admin' is FALSE**

#### Can use 'and'/'or' to string together conditionals
```SQL
select * from users where username='admin' or username='jon';

select * from users where id='1' and username='admin';
```


## Insert
Insert tells the database we wish to insert a new row of data into the table
```SQL
insert into users (username,password) values ('bob','password123');
```


## Update
Update updates or changes one or more rows of data within a table
```SQL
update users SET username='root',password='pass123' where username='admin';
```
