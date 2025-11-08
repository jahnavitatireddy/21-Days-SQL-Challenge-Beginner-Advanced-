-- 🎯 Query: Find the 3rd to 7th highest patient satisfaction scores
-- 🧠 Explanation:
-- Sort patients by satisfaction in descending order,
-- skip the top 2 (highest), and then select the next 5 records.

SELECT 
    patient_id,
    name,
    service,
    satisfaction
FROM patients
ORDER BY satisfaction DESC
LIMIT 5 OFFSET 2;

-- @DPDzero @indiandataclub #SQLWithIDC
