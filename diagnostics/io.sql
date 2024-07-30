-----------------------------------------------------------------
-- IO diagnostics
--
-- rudi@babaluga.com, go ahead license
-----------------------------------------------------------------

SELECT 
	io.context,
	io.reads,
	io.read_time,
	io.writes,
	io.write_time,
	io.op_bytes,
	io.hits,
	io.evictions,
	io.reuses,
	io.fsyncs
FROM pg_stat_io io
WHERE backend_type = 'client backend'
AND OBJECT = 'relation';
