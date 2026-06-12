# IPL Data SQL Analysis

A data analysis project on IPL cricket data (2008–2024) using MySQL.  

**Skills demonstrated:** SQL query design, Schema design, window functions, CTEs, schema normalization

---

## Dataset

Source: [Kaggle — IPL Complete Dataset](https://www.kaggle.com/datasets/patrickb1912/ipl-complete-dataset-20082020)  
Files: `matches.csv`, `deliveries.csv`

---

## ER Diagram

<img width="50%" alt="image" src="https://github.com/aadarsh-create/ipl-sql-analysis/blob/main/diagrams/er_diagram.png?raw=true" />

--- 

## Schema

- **matches** — match-level data
  - season
  - teams
  - venue
  - winner
  - result
- **deliveries** — ball-by-ball data
  - batter
  - bowler
  - runs
  - wickets

---

## Concepts Covered

- DDL — CREATE, DROP, ALTER
- Joins — INNER JOIN across matches and deliveries
- Aggregations — GROUP BY, HAVING, COUNT, SUM, AVG
- Subqueries
- CTEs (Common Table Expressions)
- Window Functions — RANK, DENSE_RANK, LAG

---

## Questions Answered

### Basic

1. How many matches were played each season?
2. Which team has won the most matches overall?
3. How often does the toss winner also win the match?

### Joins & Aggregations

4. Who are the top 10 run scorers of all time?
5. Who are the top 10 wicket takers?
6. How have total runs scored changed across seasons?

### CTEs

7. Who are the top 5 batsmen by total runs?
8. Which teams have above average wins?
9. Who has won the most Player of the Match awards?

### Window Functions

10. Who were the top 3 run scorers in each season? (RANK)
11. How did each batsman's runs change season over season? (LAG)
12. What is the running total of runs per batter in a match?

---

## How to Run

1. Install MySQL 8.0 and MySQL Workbench
2. Run `schema.sql` to create the database and tables
3. Download dataset from Kaggle (link above)
4. Import CSVs using `LOAD DATA INFILE` or Table Data Import Wizard
5. Run queries from the `queries/` folder in order

---

## Tools Used

- MySQL Workbench 8.0
- VS Code
- Kaggle Dataset
- dbdiagram.io (ER diagram)
