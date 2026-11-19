SELECT
job_id,
job_title_short,
salary_year_avg,
company_id
FROM
job_postings_fact
LIMIT 10;

SELECT
company_id,
name
FROM
company_dim
LIMIT 10;

SELECT
*
FROM
company_dim
LIMIT 10;

SELECT *
FROM
information_schema.tables
WHERE
table_catalog = 'data_jobs';

PRAGMA show_tables_expanded;
/*
─────────────────────┬──────────────────────┬──────────────────────┬─────────────────────────────────────┬──────────────────────────────────────┬───────────┐
│       database        │        schema        │         name         │            column_names             │             column_types             │ temporary │
│        varchar        │       varchar        │       varchar        │              varchar[]              │              varchar[]               │  boolean  │
├───────────────────────┼──────────────────────┼──────────────────────┼─────────────────────────────────────┼──────────────────────────────────────┼───────────┤
│ data_jobs             │ main                 │ company_dim          │ [company_id, name, link, link_goog… │ [INTEGER, VARCHAR, VARCHAR, VARCHAR… │ false     │
│ data_jobs             │ main                 │ job_postings_fact    │ [job_id, company_id, job_title_sho… │ [INTEGER, INTEGER, VARCHAR, VARCHAR… │ false     │
│ data_jobs             │ main                 │ skills_dim           │ [skill_id, skills, type]            │ [INTEGER, VARCHAR, VARCHAR]          │ false     │
│ data_jobs             │ main                 │ skills_job_dim       │ [skill_id, job_id]                  │ [INTEGER, INTEGER]                   │ false     │
│ md_information_schema │ main                 │ database_snapshots   │ [database_name, database_id, snaps… │ [VARCHAR, UUID, UUID, VARCHAR, TIME… │ false     │
│ md_information_schema │ main                 │ databases            │ [name, uuid, created_ts, transient… │ [VARCHAR, UUID, TIMESTAMP WITH TIME… │ false     │
│ md_information_schema │ main                 │ owned_shares         │ [name, url, source_db_name, source… │ [VARCHAR, VARCHAR, VARCHAR, UUID, V… │ false     │
│ md_information_schema │ main                 │ query_history        │ [query_id, query_text, start_time,… │ [UUID, VARCHAR, TIMESTAMP WITH TIME… │ false     │
│ md_information_schema │ main                 │ recent_queries       │ [query_id, query_text, start_time,… │ [UUID, VARCHAR, TIMESTAMP WITH TIME… │ false     │
│ md_information_schema │ main                 │ roles                │ [role_name, role_type, included_ro… │ [VARCHAR, VARCHAR, 'VARCHAR[]', TIM… │ false     │
│ md_information_schema │ main                 │ shared_with_me       │ [name, url, owner, visibility, cre… │ [VARCHAR, VARCHAR, VARCHAR, VARCHAR… │ false     │
│ md_information_schema │ main                 │ storage_info         │ [database_name, database_id, creat… │ [VARCHAR, UUID, TIMESTAMP_S, TIMEST… │ false     │
│ md_information_schema │ main                 │ storage_info_history │ [database_name, database_id, creat… │ [VARCHAR, UUID, TIMESTAMP_S, TIMEST… │ false     │
│ sample_data           │ hn                   │ hacker_news          │ [title, url, text, dead, by, score… │ [VARCHAR, VARCHAR, VARCHAR, BOOLEAN… │ false     │
│ sample_data           │ kaggle               │ movies               │ [overview, title, overview_embeddi… │ [VARCHAR, VARCHAR, 'FLOAT[512]', 'F… │ false     │
│ sample_data           │ nyc                  │ rideshare            │ [hvfhs_license_num, dispatching_ba… │ [VARCHAR, VARCHAR, VARCHAR, TIMESTA… │ false     │
│ sample_data           │ nyc                  │ service_requests     │ [unique_key, created_date, closed_… │ [BIGINT, TIMESTAMP, TIMESTAMP, VARC… │ false     │
│ sample_data           │ nyc                  │ taxi                 │ [VendorID, tpep_pickup_datetime, t… │ [BIGINT, TIMESTAMP, TIMESTAMP, DOUB… │ false     │
│ sample_data           │ stackoverflow_survey │ survey_results       │ [Respondent, Professional, Program… │ [BIGINT, VARCHAR, VARCHAR, VARCHAR,… │ false     │
│ sample_data           │ stackoverflow_survey │ survey_schemas       │ [qname, question, qid, force_resp,… │ [VARCHAR, VARCHAR, VARCHAR, VARCHAR… │ false     │
│ sample_data           │ who                  │ ambient_air_quality  │ [who_region, iso3, country_name, c… │ [VARCHAR, VARCHAR, VARCHAR, VARCHAR… │ false     │
└───────────────────────┴──────────────────────┴──────────────────────┴─────────────────────────────────────┴──────────────────────────────────────┴──────────
*/

DESCRIBE job_postings_fact;
/*
           job_postings_fact             │
│                                          │
│ job_id                integer   not null │
│ company_id            integer            │
│ job_title_short       varchar            │
│ job_title             varchar            │
│ job_location          varchar            │
│ job_via               varchar            │
│ job_schedule_type     varchar            │
│ job_work_from_home    boolean            │
│ search_location       varchar            │
│ job_posted_date       timestamp          │
│ job_no_degree_mention boolean            │
│ job_health_insurance  boolean            │
│ job_country           varchar            │
│ salary_rate           varchar            │
│ salary_year_avg       double             │
│ salary_hour_avg       double  
*/