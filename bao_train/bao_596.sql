SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'incident')   AND t.create_at between '2017-06-13 09:52:27' and '2017-06-14 09:52:27'   AND t.coordinate <@ box '((-73.3023130390625,41.1254438515625),(-73.07548296093749,41.221698148437504))'