SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'pottery')   AND t.create_at between '2017-10-19 14:24:19' and '2018-10-01 14:24:19'   AND t.coordinate <@ box '((-73.4064705990625,41.3502061815625),(-73.1796405209375,41.4464604784375))'