---
tags:
  - Penetration-Testing
  - Web-Hacking
  - SQL-injection
---
## URL Manipulation
The semicolon (";") closes a SQL statement and double dashes ("--") indicate that everything after the dashes should be treated as a comment.

**If an application is calling SQL data in a string with parameters, the ;-- could be utilized to break the logic string**

### Example
If a url of https://website.thm/blog?id=2 is processed as the following SQL query:
```SQL
SELECT * from blog where id=2 and private=0 LIMIT 1;
```

We can manipulate the packet or URL with either:
- https://website.thm/blog?id=2;--
```SQL
SELECT * from blog where id=2;-- and private=0 LIMIT 1;
```

This SQL Injection breaks the data string and returns results where id=2, regardless of the privacy setting or limit.


