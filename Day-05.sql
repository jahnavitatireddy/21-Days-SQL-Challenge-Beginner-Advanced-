-- Calculate the total number of patients admitted, total patients refused,
-- and the average patient satisfaction (rounded to 2 decimal places)
-- across all services and weeks.

SELECT 
    SUM(patients_admitted) AS total_patients_admitted,
    SUM(patients_refused) AS total_patients_refused,
    ROUND(AVG(patient_satisfaction), 2) AS avg_patient_satisfaction
FROM services_weeklys;


-- @DPDzero @indiandataclub #SQLWithIDC
