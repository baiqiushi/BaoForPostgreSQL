SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'proud')   AND t.create_at between '2016-05-26 23:45:27' and '2016-05-27 23:45:27'   AND t.coordinate <@ box '((-82.03148005,34.04109275),(-74.77291754999999,37.12123025))'