SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'coyote')   AND t.create_at between '2015-11-26 01:53:11' and '2015-12-17 01:53:11'   AND t.coordinate <@ box '((-112.26214311499268,33.53175270665283),(-112.26037100500733,33.53250469334717))'