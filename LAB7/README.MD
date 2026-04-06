# 🚀 SQL Lab Assignment - 7  Subqueries



## 📌 Overview

This project demonstrates the use of **SQL Subqueries (Nested Queries)** on a Student Database.
It covers everything from **basic filtering** to **advanced analytical queries** using subqueries.

---

## 🎯 Objective

* Understand how subqueries work
* Apply nested queries for data filtering
* Use aggregate functions inside subqueries
* Replace JOINs using subquery logic

---

## 🧠 What is a Subquery?

> A **subquery** is a query inside another query where the inner query executes first and its result is used by the outer query.

---

## 📂 Assignment Structure

### 🔹 Part A: Basic Subqueries

* Same department as a student
* Same gender as a student
* Filtering based on single-row subqueries

---

### 🔹 Part B: Subqueries with `IN` & `EXISTS`

* Multi-row subqueries using `IN`
* Checking data existence using `EXISTS`
* Filtering based on enrollment

---

### 🔹 Part C: Aggregate Subqueries

* Using `AVG()`, `COUNT()`
* Comparing values with averages
* Department-level analysis

---

### 🔹 Part D: Subqueries instead of JOIN

* Retrieve related data without using JOIN
* Simplify query logic

---

### 🔹 Part E: Analytical Subqueries

* Maximum values using `MAX()`
* Group-based filtering
* Multi-condition queries

---

### 🔹 Part F: Challenging Queries

* Nested subqueries (multiple levels)
* Finding non-existing records
* Advanced filtering logic

---

## ⚙️ SQL Concepts Used

| Concept    | Description             |
| ---------- | ----------------------- |
| `=`        | Single-row subquery     |
| `IN`       | Multi-row subquery      |
| `EXISTS`   | Checks if records exist |
| `AVG()`    | Average calculation     |
| `COUNT()`  | Count records           |
| `MAX()`    | Maximum value           |
| `GROUP BY` | Group data              |
| `HAVING`   | Filter grouped data     |

---

## 🧪 Sample Query

```sql
SELECT STUDENT_NAME
FROM STUDENT
WHERE DEPT_ID = (
    SELECT DEPT_ID
    FROM STUDENT
    WHERE STUDENT_ID = 'S401'
);
```

👉 Finds students in the same department as **S401**

---

## 💡 Key Learnings

* Execution order of nested queries
* Difference between `IN`, `EXISTS`, and `=`
* Handling real-world database queries
* Writing optimized SQL without JOIN

---

## 📊 Use Cases

* Student Management Systems
* Course Enrollment Analysis
* Department-level reporting
* Data filtering in relational databases

---

## 🏁 Conclusion

This assignment builds a strong foundation in **SQL subqueries**, enabling efficient data retrieval and complex query building in relational databases.

---
