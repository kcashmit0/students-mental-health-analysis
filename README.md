# Student Mental Health Analysis

Comprehensive SQL analysis exploring mental health patterns among university students, comparing domestic vs international students across multiple dimensions.

## Dataset
Student mental health survey including:
- **Depression scores** (PHQ-9)
- **Social connectedness** (SCS)
- **Acculturative stress** (AS)
- **Demographics**: Age, gender, student type, length of stay

## Analysis Questions

### 1. Length of Stay Impact
Does duration in country affect international students' mental health?

### 2. Domestic vs International Comparison
Which group faces greater mental health challenges overall?

### 3. High-Risk Students
How many students have severe depression (PHQ > 20)?

### 4. Gender Patterns
Are there significant gender differences in mental health outcomes?

### 5. Age Group Analysis
Does age correlate with depression and stress levels?

### 6. Most Vulnerable Demographics
Which groups face the highest combined mental health risks?

### 7. Social Isolation Risk
Who experiences critically low social connectedness?

### 8. Severe Depression Profiles
Complete demographic breakdown of students with severe depression (PHQ > 24)

## Key Findings
- International students show significantly higher acculturative stress
- [Run queries and add your actual findings here]
- [Update after completing analysis]

## SQL Techniques Used
- Aggregate functions (COUNT, AVG)
- GROUP BY with multiple columns
- CASE statements for age grouping
- WHERE filtering for risk thresholds
- ORDER BY and LIMIT for ranking

## Files
- `analysis.sql` - 8 comprehensive queries with documentation
- `analysis_old.sql` - Original single query (archived)

## Tools
- MySQL Workbench
- Source: DataCamp Intermediate SQL Course

## How to Run
```sql
-- Load students dataset into MySQL
-- Execute queries in analysis.sql
-- Review results for mental health insights
```
