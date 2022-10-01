-----------------------------------------------------------------
-- List all empty tables in the database
--
-- rudi@babaluga.com, go ahead license
-----------------------------------------------------------------

SELECT 
    table_schema || '.' || table_name AS table_name
FROM information_schema.tables
WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
AND pg_relation_size('"'||table_schema||'"."'||table_name||'"') = 0
ORDER BY table_name;
