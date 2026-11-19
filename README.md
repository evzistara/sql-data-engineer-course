# 🛠️ SQL for Data Engineering - Full Course

This repo contains my leson notes from Luke Barousse's [SQL Course](https://www.youtube.com/watch?v=UjhFbq4uU2Y&list=PL_CkpxkuPiT9aSqaE7fTNJH5W2X0Ow8qf&index=2)

## How to Run SQL

### Option 1: Cloud (Easiest to get started) — MotherDuck

1. **Sign up for MotherDuck** (free): [lukeb.co/motherduck](https://lukeb.co/motherduck)
2. Use **MotherDuck Studio** in your browser — no installation required
3. **Attach the course database** by running this command:

```sql
ATTACH 'md:_share/data_jobs/87603155-cdc7-4c80-85ad-3a6b0d760d93'
```

4. **For running project files:** Not recommended — the cloud UI works like a Jupyter notebook (run queries cell-by-cell; no direct file execution). Best for ad hoc analysis. To run full project files, use Option 2 below.

### Option 2: Run Locally with DuckDB

1. **Install DuckDB** from the [official MotherDuck install page](https://motherduck.com/docs/getting-started/interfaces/connect-query-from-duckdb-cli/) — follow the instructions for your OS to install the correct version that supports MotherDuck.

2. **Launch DuckDB** in your terminal:

   ```bash
   duckdb
   ```

3. **Attach and connect to the course database** — either specify the database when launching DuckDB (`duckdb "md:data_jobs"`), or in your session run `ATTACH` then `USE` to switch to the attached database:

   ```sql
   ATTACH 'md:_share/data_jobs/87603155-cdc7-4c80-85ad-3a6b0d760d93';
   USE data_jobs;
   ```

4. **For running project files:** Follow the instructions outlined in each [project section](Projects/).
