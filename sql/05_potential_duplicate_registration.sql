-- ============================================================
-- 5. Potential Duplicate Registration Detection
-- ============================================================
--
-- Identify registration records with the same full name and
-- phone number within the 2024 registration period.
--
-- Matching both fields makes these records potential duplicate
-- registrations, but does not confirm that they belong to the
-- same student.
--
-- Manual review or additional identifiers should be used to
-- confirm whether the records represent the same person.
--
-- ============================================================

SELECT *
FROM (
    SELECT
        id,
        full_name,
        phone_number,
        registration_id,
        registration_num,
        registration_year,
        last_status,
        delete_flag,
        COUNT(*) OVER (
            PARTITION BY full_name, phone_number
        ) AS duplicate_count
    FROM student_registration.applicant_registration
    WHERE registration_year = 2024
        AND delete_flag = 0
        AND phone_number IS NOT NULL
) AS x
WHERE duplicate_count > 1;