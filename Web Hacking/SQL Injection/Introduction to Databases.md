---
tags:
  - Penetration-Testing
  - Web-Hacking
  - SQL-injection
---
## What is a Database?
A database is a way of electronically storing data in an organized manner

A database is controlled by a **Database Management System (DBMS)**
- May contain multiple databases, each containing a unique set of data. This data is stored in **tables**

## Tables
A table is made up of columns and rows

**Columns:**
- Often referred to as a **data field**
- When creating a column, also set type of data column will contain (string, integer, etc)
	- Setting data type ensures that incorrect data isn't stored.
- Each column is considered a unique **key** or data category

**Rows:**
- Often referred to as a **record**
- Each new record will likely have entries for each column (data field)

## Relational v Non-Relational Databases
A **relational database** stores information in table structures, with tables sharing information between them.
- Relational Databases often cross-reference primary keys (columns) between tables/databases
- Examples: [[MySQL]], SQLite

A **non-relational database (NoSQL)** is any database that does not use tables/columns/rows to store data.
- Each key can reference various types of data (not set to concrete structure)
- Examples: MongoDB, Cassandra

