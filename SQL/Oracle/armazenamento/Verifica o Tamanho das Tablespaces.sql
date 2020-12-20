SELECT t.tablespace
			,t.totalspace AS " Totalspace(MB)"
			,ROUND((t.totalspace - fs.freespace), 2) AS "Used Space(MB)"
			,fs.freespace AS "Freespace(MB)"
			,ROUND(((t.totalspace - fs.freespace) / t.totalspace) * 100, 2) AS "% Used"
			,ROUND((fs.freespace / t.totalspace) * 100, 2) AS "% Free"

	FROM (SELECT ROUND(SUM(d.bytes) / (1024 * 1024)) AS totalspace
							,d.tablespace_name tablespace
					FROM dba_data_files d
				 GROUP BY d.tablespace_name) t
			,(SELECT ROUND(SUM(f.bytes) / (1024 * 1024)) AS freespace
							,f.tablespace_name tablespace
					FROM dba_free_space f
				 GROUP BY f.tablespace_name) fs

 WHERE t.tablespace = fs.tablespace

 ORDER BY t.tablespace;
