SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'avenue')   AND t.create_at between '2016-07-31 03:33:37' and '2016-08-01 03:33:37'   AND t.coordinate <@ box '((-81.2414395,37.6865995),(-66.7243145,43.8468745))'