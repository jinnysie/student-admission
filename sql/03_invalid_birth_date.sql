-- ============================================================
-- 3. Birth Date Validation
-- ============================================================
--
-- Identify potentially invalid birth dates among applicants
-- who have reached the Accepted stage (status 8) or beyond.
--
-- These checks are performed early so that potential data issues
-- can be reviewed and corrected before the re-registration period.
--
-- The birth year is included in the result to support manual review.
-- The 2007 cutoff should be cross-checked against the original
-- source data and applicable admission criteria before confirming
-- any record as invalid.
--
-- ============================================================

SELECT
    registration_num,
    registration_id,
    full_name,
    birth_date,
    YEAR(birth_date) AS birth_year,
    last_status
FROM student_registration.applicant_registration
WHERE last_status >= 8
    AND registration_year = 2024
    AND registration_num IS NOT NULL
    AND YEAR(birth_date) > 2007
    AND delete_flag = 0;