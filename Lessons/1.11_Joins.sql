SELECT
    jpf.job_id,
    cd.name AS company_name,
    jpf.job_title_short
FROM
    job_postings_fact AS jpf
LEFT JOIN company_dim AS cd
    ON jpf.company_id = cd.company_id;

SELECT
    jpf.job_id,
    cd.name AS company_name,
    jpf.job_title_short
FROM
    job_postings_fact AS jpf
RIGHT JOIN company_dim AS cd
    ON jpf.company_id = cd.company_id;

SELECT
    jpf.job_id,
    cd.name AS company_name,
    jpf.job_title_short
FROM
    job_postings_fact AS jpf
INNER JOIN company_dim AS cd
    ON jpf.company_id = cd.company_id;

    SELECT 
        jpf.job_id,
        jpf.job_title_short,
        sjd.skill_id,
        sd.skills
    FROM job_postings_fact AS jpf
    LEFT JOIN skills_job_dim AS sjd
    ON jpf.job_id = sjd.job_id
    LEFT JOIN skills_dim as sd
    ON sjd.skill_id = sd.skill_id
    LIMIT 10;

    /*
 job_id │    job_title_short    │ skill_id │ skills  │
│ int32  │        varchar        │  int32   │ varchar │
├────────┼───────────────────────┼──────────┼─────────┤
│  68454 │ Senior Data Scientist │       12 │ java    │
│  68454 │ Senior Data Scientist │       14 │ c#      │
│  68454 │ Senior Data Scientist │        7 │ scala   │
│  68455 │ Data Scientist        │        1 │ python  │
│  68456 │ Senior Data Scientist │        1 │ python  │
│  68456 │ Senior Data Scientist │        0 │ sql     │
│  68457 │ Data Scientist        │        1 │ python  │
│  68457 │ Data Scientist        │        0 │ sql     │
│  68458 │ Data Scientist        │        2 │ r       │
│  68459 │ Data Scientist        │        1 │ python  │
└────────┴───────────────────────┴──────────┴─────────┘
  10 rows                                   4 columns
    */