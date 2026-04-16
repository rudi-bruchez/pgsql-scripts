-----------------------------------------------------------------
-- View index usages for a table. Variable you can use in dBeaver
--
-- rudi@babaluga.com, go ahead license
-----------------------------------------------------------------

SELECT
  i.schemaname,
  i.relname      AS table_name,
  i.indexrelname AS index_name,
  i.idx_scan,
  i.idx_tup_read,
  i.idx_tup_fetch,
  pg_size_pretty(pg_relation_size(i.indexrelid)) AS index_size
FROM pg_stat_user_indexes AS i
WHERE i.relname = :table_name
ORDER BY i.idx_scan DESC;