-- For NISN / National Student ID validation: 

-- Identify potentially invalid NISN values among applicants
-- who have reached the Accepted stage (status 8) or beyond.
-- Data validation is intentionally performed from status 8 onward
-- so that potential data issues can be identified and corrected
-- before the re-registration period.
-- The expected NISN format is exactly 10 numeric digits.
-- NULL values and format mismatches are included as additional
-- database-level data quality checks.


select
	registration_num,
	registration_id,
	full_name,
	national_student_id,
	mother_name,
	last_status
from
	student_registration.applicant_registration
where
	( national_student_id is null
		or national_student_id not regexp '^[0-9]{10}$')
	and last_status >= 8
	and registration_year = 2024
	and registration_num is not null
	and delete_flag = 0;

