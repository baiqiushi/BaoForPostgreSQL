SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'check')   AND t.create_at between '2016-06-03 21:11:36' and '2016-11-23 21:11:36'   AND t.coordinate <@ box '((-87.89712475687408,42.167478400831605),(-87.89690324312592,42.1675723991684))'