-- ============================================================
-- 6. Online Test Attempt Monitoring
-- ============================================================
--
-- Retrieve test attempt records started on a specific date
-- to support monitoring of applicants' test participation,
-- progress, and test duration.
--
-- Saved answers are included to monitor applicant progress,
-- including attempts that have not yet been submitted.
--
-- A LEFT JOIN is used intentionally so that test attempts
-- can still be monitored even when the corresponding
-- applicant record is not available in the active registration
-- data.
--
-- The query filters by calendar date to include all test
-- attempts started on the specified date.
--
-- ============================================================

SELECT
    a.id,
    a.registration_id,
    a.registration_num,
    a.full_name,
    b.start_time,
    b.end_time,
    b.validity_period,
    b.answered_answers
FROM student_registration.test_attempt AS b
LEFT JOIN student_registration.applicant_registration AS a
    ON a.delete_flag = 0
    AND a.id = b.id
WHERE b.delete_flag = 0
    AND b.start_time >= '2024-05-27 00:00:00'
    AND b.start_time < '2024-05-28 00:00:00';