-----------------------------------------------------------------
-- This script will show the size of each table in the database
--
-- rudi@babaluga.com, go ahead license
-----------------------------------------------------------------

SELECT 
    table_schema || '.' || table_name AS table_name,
    pg_relation_size('"'||table_schema||'"."'||table_name||'"') AS table_size
FROM information_schema.tables
WHERE table_schema NOT IN ('pg_catalog', 'information_schema')
ORDER BY table_size DESC;
