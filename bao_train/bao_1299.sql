SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'photo')   AND t.create_at between '2016-05-13 18:10:59' and '2016-05-14 18:10:59'   AND t.coordinate <@ box '((-74.09360605499268,40.69779400665283),(-74.09183394500732,40.69854599334717))'