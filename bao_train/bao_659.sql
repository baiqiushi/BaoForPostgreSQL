SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'incident')   AND t.create_at between '2017-09-01 22:37:45' and '2017-09-11 22:37:45'   AND t.coordinate <@ box '((-74.20582705499268,40.75753900665283),(-74.20405494500733,40.75829099334717))'