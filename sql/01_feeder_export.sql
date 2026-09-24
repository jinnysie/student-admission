-- ============================================================
-- 1. Student Registration Reporting
-- ============================================================
--
-- For Feeder/Reporting purposes:
-- Extract student registration records for 2024
-- who have progressed beyond the "Accepted" stage.
--
-- Status 8 represents "Accepted", while status 9 and above
-- indicate that the applicant has completed additional
-- registration requirements and can be included in
-- new-student reporting.
--
-- ============================================================

SELECT
    s.student_number,
    ar.registration_year,
    ar.registration_num,
    ar.full_name,
    ar.program,
    ar.birth_place,
    ar.birth_date,
    ar.gender,
    ar.phone_number,
    ar.nationality,
    ar.religion,
    ar.address,
    ar.village,
    ar.district,
    ar.regency,
    ar.city,
    ar.province,
    ar.mother_name,
    ar.previous_school,
    ar.national_student_id,
    ar.last_status
FROM student_administration.student AS s
JOIN student_registration.applicant_registration AS ar
    ON s.id = ar.id
WHERE ar.registration_year = 2024
    AND ar.last_status > 8
    AND ar.delete_flag = 0;