SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'factory')   AND t.create_at between '2018-12-16 07:03:18' and '2019-03-12 07:03:18'   AND t.coordinate <@ box '((-73.95937421997071,40.71270602661133),(-73.9522857800293,40.715713973388674))'