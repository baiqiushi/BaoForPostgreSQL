SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'get')   AND t.create_at between '2018-08-04 02:21:16' and '2018-08-06 02:21:16'   AND t.coordinate <@ box '((-87.64109134998536,41.87790516330567),(-87.63754713001465,41.879409136694335))'