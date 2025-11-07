-- Day 2 - SQL Challenge
-- Question: Find all patients admitted to 'Surgery' service with a satisfaction score below 70, showing their patient_id, name, age, and satisfaction score.

SELECT patient_id,
       name,
       age,
       satisfaction AS satisfaction_score
FROM patients
WHERE service = 'surgery'
  AND satisfaction < 70;

-- @DPDzero @indiandataclub #SQLWithIDC
