-- ============================================================
-- 4. Birth Place Validation
-- ============================================================
--
-- Identify potentially incorrect birth place values among applicants
-- who have reached the Accepted stage (status 8) or beyond.
--
-- Numeric characters may indicate that a birth date or other numeric
-- information was entered into the wrong field.
--
-- These records are flagged for manual review rather than
-- automatically treated as invalid.
--
-- ============================================================

SELECT
    birth_place,
    birth_date,
    registration_id,
    registration_num
FROM student_registration.applicant_registration
WHERE birth_place REGEXP '[0-9]'
    AND last_status >= 8
    AND registration_year = 2024
    AND delete_flag = 0
    AND registration_num IS NOT NULL;