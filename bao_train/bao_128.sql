SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'jorge')   AND t.create_at between '2016-04-05 00:44:53' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-77.01759323687408,38.8976175208316),(-77.01737172312592,38.897711519168396))'