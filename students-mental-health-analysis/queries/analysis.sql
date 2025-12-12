

-- 1. INTERNATIONAL STUDENTS: Mental Health by Length of Stay
-- =============================================
-- Question: Does length of stay affect mental health scores?

SELECT 
    stay, 
    COUNT(*) as student_count,
    ROUND(AVG(todep), 2) AS avg_depression_score, 
    ROUND(AVG(tosc), 2) AS avg_social_connectedness, 
    ROUND(AVG(toas), 2) AS avg_acculturative_stress 
FROM students
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;


-- =============================================
-- 2. DOMESTIC vs INTERNATIONAL: Mental Health Comparison
-- =============================================
-- Question: Who struggles more with mental health?

SELECT 
    inter_dom AS student_type,
    COUNT(*) AS total_students,
    ROUND(AVG(todep), 2) AS avg_depression,
    ROUND(AVG(tosc), 2) AS avg_social_connectedness,
    ROUND(AVG(toas), 2) AS avg_stress
FROM students
GROUP BY inter_dom;


-- =============================================
-- 3. HIGH-RISK STUDENTS: Depression Score > 20
-- =============================================
-- Question: How many students are at high risk?

SELECT 
    inter_dom,
    COUNT(*) AS high_risk_count,
    ROUND(AVG(todep), 2) AS avg_depression_score
FROM students
WHERE todep > 20
GROUP BY inter_dom;


-- =============================================
-- 4. GENDER ANALYSIS: Mental Health by Gender
-- =============================================
-- Question: Are there gender differences in mental health?

SELECT 
    Gender,
    COUNT(*) AS student_count,
    ROUND(AVG(todep), 2) AS avg_depression,
    ROUND(AVG(toas), 2) AS avg_stress,
    ROUND(AVG(tosc), 2) AS avg_social_connectedness
FROM students
GROUP BY Gender;


-- =============================================
-- 5. AGE GROUPS: Mental Health Patterns
-- =============================================
-- Question: Does age correlate with mental health?

SELECT 
    CASE 
        WHEN Age < 20 THEN 'Under 20'
        WHEN Age BETWEEN 20 AND 24 THEN '20-24'
        WHEN Age >= 25 THEN '25+'
    END AS age_group,
    COUNT(*) AS student_count,
    ROUND(AVG(todep), 2) AS avg_depression,
    ROUND(AVG(toas), 2) AS avg_stress
FROM students
GROUP BY age_group
ORDER BY age_group;


-- =============================================
-- 6. MOST AT-RISK GROUP: Combined Analysis
-- =============================================
-- Question: Which demographic faces the highest mental health challenges?

SELECT 
    inter_dom,
    Gender,
    COUNT(*) AS student_count,
    ROUND(AVG(todep), 2) AS avg_depression,
    ROUND(AVG(toas), 2) AS avg_stress
FROM students
GROUP BY inter_dom, Gender
ORDER BY avg_depression DESC
LIMIT 5;


-- =============================================
-- 7. LOW SOCIAL CONNECTEDNESS: Isolation Risk
-- =============================================
-- Question: Who feels most isolated?

SELECT 
    inter_dom,
    stay,
    COUNT(*) AS students_at_risk
FROM students
WHERE tosc < 30  -- Low social connectedness score
GROUP BY inter_dom, stay
ORDER BY students_at_risk DESC;


-- =============================================
-- 8. FULL PROFILE: Students with Severe Depression
-- =============================================
-- Question: What's the complete profile of severely depressed students?

SELECT 
    Gender,
    Age,
    inter_dom,
    stay,
    todep AS depression_score,
    toas AS stress_score,
    tosc AS social_score
FROM students
WHERE todep > 24  -- Severe depression threshold
ORDER BY todep DESC;





