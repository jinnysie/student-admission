# Student Admission Data Reporting & Data Quality

## Project Overview

This project is based on **student admission** and registration work I handled previously, covering both online and offline admission processes. 

The SQL queries were used to prepare registration data for reporting and feeder submission, perform data quality checks, and monitor applicant online test attempts.

The project covers two related parts:

### 1 — Registration Reporting & Data Quality

Registration data is prepared for reporting and downstream data submission.

The reporting process is supported by data quality checks covering areas such as:

* National Student ID (NISN) validation
* Birth date validation
* Birth place validation
* Potential duplicate registration detection
* Registration status filtering

These checks are performed as part of the reporting preparation process to identify records that may require correction or verification before being used as reporting or feeder data.

### 2 — Online Test Monitoring & Reporting

A separate but related workflow covers applicant online test attempts.

The SQL queries are used to retrieve and monitor test attempt information, including test timing, validity periods, answered questions, and applicant progress.

Although this workflow is separate from the registration data-quality process, both workstreams support the broader student admission process.

---

## Registration Status

The admission workflow contains multiple registration and administrative stages.

The process is represented by a `last_status` value:

| Status | Registration Stage                    |
| -----: | ------------------------------------- |
|      1 | Initial Registration List             |
|      2 | Initial Data Entry                    |
|      3 | New Student List                      |
|      4 | Financial Verification                |
|      5 | Administrative Verification           |
|      6 | Verified Student List                 |
|      7 | Not Accepted                          |
|      8 | Accepted                              |
|      9 | Registration Completed & Paid in Full |
|     10 | Valid Personal Data                   |
|     11 | Physical Document Verification        |
|     12 | Document Receipt                      |

### Status Rule for Data Quality Validation

For the registration reporting process, reaching **Accepted (status 8)** does not mean that an applicant has completed the entire registration process.

However, records with `last_status >= 8` are intentionally included in the **data quality validation process**.

The reason is operational: once an applicant reaches the Accepted stage, their personal and registration data should be reviewed and corrected before the remaining registration process.

Performing these checks earlier helps reduce the risk of having to correct a large volume of records close to the final registration deadline.

```text
Therefore:
last_status >= 8
        ↓
Eligible for data quality review
        ↓
Identify potential anomalies
        ↓
Verify / correct source data
        ↓
Prepare cleaner reporting / feeder data
```

This rule applies to **data quality validation**, not to the definition of a finalized new student.

---

# Database Environment

| Component  | Details                                   |
| ---------- | ----------------------------------------- |
| Database   | MySQL                                     |
| Version    | MySQL 8.4                                 |
| SQL Client | MySQL Workbench / MySQL-compatible client |
| Dataset    | Dummy / generalized data                  |

The SQL files included in this repository can be used to recreate the database structure and run the reporting and validation queries.

## Import Database

1. Open MySQL 8.4 or MySQL Workbench.
2. Create or select the target database.
3. Import the corresponding `.sql` file.
4. Execute the SQL script.
5. Verify the imported tables:

SHOW TABLES;


## Export Database

The database can be exported as a `.sql` dump using MySQL Workbench or the `mysqldump` command.

---

# Data & Tables

The project primarily uses the following generalized tables:

* `student_administration.student`
* `student_registration.applicant_registration`
* `student_registration.test_attempt`

The tables are related through student and registration identifiers to produce reporting datasets and connect applicant registration information with online test activity.

The original database structure has been **generalized for portfolio purposes** while preserving the relationships and business logic necessary to demonstrate the SQL workflow.

---

# 1 — Registration Reporting & Data Quality

## Objective

Prepare student registration data for reporting and downstream feeder processes while identifying records that may require data verification.

The reporting process combines **data extraction and data quality validation** rather than treating validation as a separate activity.

The objective is to make potential data issues visible **before the data is used for downstream reporting or submission**.

---

## 01. Student Registration Reporting

Extracts student registration records for the 2024 registration period based on registration status and deletion status.

The reporting dataset contains information such as:

* Student number
* Registration number
* Applicant name
* Program
* Birth information
* Gender
* Contact information
* Nationality
* Religion
* Address
* Previous school
* National Student ID
* Registration status

This dataset can be used as a reporting or feeder dataset for student admission administration.

---

## 02. NISN Validation

Identifies potentially invalid National Student ID (NISN) values.

The validation checks whether the NISN:

* Is `NULL`
* Follows the expected numeric format
* Contains the expected number of digits

The purpose is to identify records that may require correction before being included in downstream reporting.

---

## 03. Birth Date Validation

Identifies records with potentially unusual birth years.

The query extracts the birth year and applies a defined cutoff for further review.

The result is treated as a **data-quality flag**, not an automatic declaration that the record is invalid.

Records may require verification against the original source data and applicable admission requirements.

---

## 04. Birth Place Validation

Identifies birth place values containing numeric characters.

Because birth date is stored separately, numeric characters in the birth place field may indicate that information was entered into the wrong field.

These records are flagged for review rather than automatically modified.

---

## 05. Potential Duplicate Registration Detection

Identifies registration records where the same combination of:

* Full name
* Phone number

appears more than once within the 2024 registration period.

A window function is used to identify matching records:

```sql
COUNT(*) OVER (
    PARTITION BY full_name, phone_number
)
```

These records are considered **potential duplicates**, not confirmed duplicates.

A matching name and phone number alone does not establish that two records belong to the same person.

---

## Data Quality → Reporting Flow

The validation queries support the reporting process as follows:

```text
Registration Data
       ↓
Apply Reporting Filters
       ↓
Run Data Quality Checks
       ↓
Flag Potential Anomalies
       ↓
Manual Verification / Correction
       ↓
Reporting / Feeder Dataset
```

The validation layer is therefore part of the **reporting preparation workflow**, rather than a standalone analysis project.

---

# 2 — Online Test Monitoring & Reporting

## Objective

Monitor applicant online test attempts and retrieve test activity associated with the student admission process.

The online test system is operationally separate from the registration data-quality workflow, but the resulting information is related to the same admission process.

---

## Test Attempt Reporting

The query retrieves test attempt records started on a selected date.

The report includes information such as:

* Applicant information
* Registration number
* Test start time
* Test end time
* Validity period
* Answered-question information
* Attempt status

Saved answer information can also be used to monitor applicant progress, including attempts that may not yet have been submitted.

This reporting can support:

* Applicant test monitoring
* Test attempt investigation
* Progress monitoring
* Identification of incomplete attempts
* Admission administration

---

# Data Quality Approach

The project distinguishes between **potential data anomalies** and **confirmed errors**.

The SQL queries are designed to flag records for further investigation rather than automatically changing source data.

For example:

* An unusual birth year is flagged for verification.
* Numeric characters in a birth place are flagged as a potential data-entry issue.
* Matching names and phone numbers are treated as potential duplicates.
* Invalid-format NISN values are identified for correction before downstream reporting.

This approach helps minimize the risk of incorrectly modifying legitimate admission records.

---

# SQL Techniques Demonstrated

* `INNER JOIN`
* `LEFT JOIN`
* `WHERE` filtering
* `REGEXP`
* `IS NULL`
* Date filtering
* `YEAR()`
* Window functions
* `COUNT() OVER(PARTITION BY ...)`
* Duplicate detection
* Data quality validation
* Reporting-oriented query design
* Relational data extraction

---

# Repository Structure

```text
student-admission/
│
├── README.md
│
├── database/
│   └── student_administration.sql
│   └── student_registration.sql
│
├── sql/
│   ├── 01_feeder_export.sql
│   ├── 02_invalid_national_student_id.sql
│   ├── 03_invalid_birth_date.sql
│   ├── 04_invalid_birth_place.sql
│   ├── 05_potential_duplicate_registration.sql
│   └── 06_test_attempts_by_date
│
└── result/
    └── student_registration_cleaned.csv

```

---

# Data Privacy

All data included in this portfolio is **dummy / generalized data created for demonstration purposes**.

The original database structure has been generalized, and no real student records, production credentials, or confidential institutional data are included.

The project is intended to demonstrate the SQL logic, reporting workflow, and data-quality approach rather than expose production data.

---

# Skills Demonstrated

**SQL · MySQL · Data Quality · Data Validation · Data Cleaning · Reporting · Data Extraction · Duplicate Detection · Relational Databases · Business Rule Implementation**
