SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'circle')   AND t.create_at between '2019-05-30 10:50:25' and '2019-06-01 10:50:25'   AND t.coordinate <@ box '((-74.08524602749632,40.74224200332642),(-74.08435997250366,40.74261799667358))'