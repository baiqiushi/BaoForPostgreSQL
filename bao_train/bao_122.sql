SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'ttinytthompson')   AND t.create_at between '2016-03-14 23:14:38' and '2016-03-19 23:14:38'   AND t.coordinate <@ box '((-160.30164299,57.14293392),(-153.04308049000002,60.223071420000004))'