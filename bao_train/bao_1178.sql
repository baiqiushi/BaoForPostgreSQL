SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'see')   AND t.create_at between '2015-12-19 21:06:15' and '2015-12-20 21:06:15'   AND t.coordinate <@ box '((-82.21072835976562,41.440787212890626),(-82.15402084023438,41.46485078710937))'