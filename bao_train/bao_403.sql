SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'bxhxldwxrld')   AND t.create_at between '2016-12-17 16:16:55' and '2016-12-19 16:16:55'   AND t.coordinate <@ box '((-88.454813,34.548232),(-59.420562999999994,46.868781999999996))'