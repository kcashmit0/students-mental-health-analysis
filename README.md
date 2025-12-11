# Student Mental Health Analysis

Analysis of international students' mental health indicators based on length of stay.

## Project Overview

This analysis examines how international students' mental health metrics vary by their length of stay using data from a student mental health survey.

## Metrics Analyzed

- **PHQ Score** (todep): Depression screening
- **SCS Score** (tosc): Social Connectedness Scale  
- **AS Score** (toas): Acculturative Stress

## Key Question

How do mental health indicators differ among international students based on their length of stay?

## SQL Query

The analysis uses:
- Filtering for international students only (`WHERE inter_dom = 'Inter'`)
- Grouping by length of stay
- Calculating average scores for each mental health metric
- Counting students in each stay duration group

## Tools Used

- MySQL Workbench
- Dataset: Student mental health survey data (DataCamp Intermediate SQL)

## How to Run

1. Import the students dataset into MySQL
2. Run `analysis.sql` query
3. Review results showing mental health trends by stay duration

## Source
DataCamp Intermediate SQL - Analyzing Students' Mental Health project


