SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'light')   AND t.create_at between '2016-11-09 15:04:05' and '2017-05-01 15:04:05'   AND t.coordinate <@ box '((-75.16656584687408,39.939931340831606),(-75.16634433312592,39.9400253391684))'