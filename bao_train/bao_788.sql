SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'incident')   AND t.create_at between '2018-01-09 16:41:09' and '2018-01-10 16:41:09'   AND t.coordinate <@ box '((-73.78384402749633,40.741511003326416),(-73.78295797250367,40.74188699667358))'