SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'latest')   AND t.create_at between '2018-05-03 18:36:05' and '2018-05-04 18:36:05'   AND t.coordinate <@ box '((-121.28083185499267,38.78588300665283),(-121.27905974500732,38.78663499334717))'