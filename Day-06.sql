-- Day 6 - SQL Challenge
-- 📘 Question:
-- Write an SQL query to calculate:
--   1. The total number of patients admitted
--   2. The total number of patients refused
--   3. The admission rate (percentage of requests that were admitted)
-- Then, order the results by admission rate in descending order.

SELECT 
    service,
    SUM(patients_admitted) AS total_patients_admitted,
    SUM(patients_refused) AS total_patients_refused,
    ROUND(
        (SUM(patients_admitted) * 1.0 / 
        NULLIF(SUM(patients_admitted) + SUM(patients_refused), 0)) * 100, 
        2
    ) AS admission_rate
FROM services_weekly
GROUP BY service
ORDER BY admission_rate DESC;

-- @DPDzero @indiandataclub #SQLWithIDC
