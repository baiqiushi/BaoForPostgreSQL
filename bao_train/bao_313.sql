SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'incident')   AND t.create_at between '2016-09-23 16:04:29' and '2016-09-24 16:04:29'   AND t.coordinate <@ box '((-74.38464251374818,40.86042000166321),(-74.38419948625183,40.860607998336796))'