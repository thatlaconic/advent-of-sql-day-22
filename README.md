# [Conscripting SQL loving elves](https://adventofsql.com/challenges/22)

## Description

Santa, facing competition from Amazon's same-day drone delivery, realized efficiency was crucial to preserving Christmas traditions. Determined to outmaneuver the tech giant, he demanded a query of the workshop’s Skills table to identify elves proficient in SQL. Eldrin, Faenor, and Luthien rose to the challenge, using their expertise to find coders and logistics experts.

With data-driven strategies and a dedicated SQL team, Santa optimized his operations in time for Christmas Eve. Armed with tradition and technology, his workshop prepared to uphold the magic of Christmas, ensuring Amazon's drones wouldn't outshine his sleigh.

## Challenge
[Download Challenge data](https://github.com/thatlaconic/advent-of-sql-day-22/blob/main/advent_of_sql_day_22.sql)

* Find all the elves with SQL as a skill
* Count each elf only once.
* Only the skill SQL counts, MySQL etc. does not count

## Dataset
This dataset contains 1 table. 
### Using PostgreSQL
**input**

```sql
SELECT *
FROM elves ;
```
**output**

![](https://github.com/thatlaconic/advent-of-sql-day-22/blob/main/elves.PNG)


### Solution
[Download Solution Code](https://github.com/thatlaconic/advent-of-sql-day-22/blob/main/advent_answer_day22.sql)

**input**
```sql

SELECT COUNT(*)
FROM (SELECT id,  UNNEST(string_to_array(skills, ',')) as skill_unnested FROM elves)
WHERE skill_unnested = 'SQL';

```
**output**

![](https://github.com/thatlaconic/advent-of-sql-day-22/blob/main/d22.PNG)

