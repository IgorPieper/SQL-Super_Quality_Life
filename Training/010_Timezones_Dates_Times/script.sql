SHOW timezone; -- Show current Timezone
SET TIME ZONE 'UTC'; -- Set Timezone for current session
ALTER USER postgres SET timezone='UTC'; -- Set Timezone for all sessions


-- Time format YYYY-MM-DDTHH:MM:SS+Timezone // 2025-12-28T17:58:45+02:00
SELECT CURRENT_TIME; -- Show Current Time
SELECT CURRENT_DATE; -- Show Current Date
SELECT to_char( CURRENT_DATE, 'dd/mm/yyyy'); -- Show Current Formated Date

SELECT CURRENT_DATE - '1800-01-01' -- Show how many days goes by
SELECT AGE(date '1800-01-01') -- Show how old is someone
SELECT AGE(date '1900-01-01' date '1800-01-01')

SELECT EXTRACT (DAY FROM date '1900-01-01') AS "Day" -- Show Only Day
SELECT date_trunc('year', date '1992-11-13'); -- Round date to the begining of a year

SELECT CURRENT_DATE - INTERVAL '1 year 3 months 2 weeks 6 days' -- Show date from x time ago
