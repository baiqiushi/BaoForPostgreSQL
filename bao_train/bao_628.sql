SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'orlando')   AND t.create_at between '2017-07-29 00:25:49' and '2017-07-31 00:25:49'   AND t.coordinate <@ box '((-81.698220078125,28.372605703125),(-81.244559921875,28.565114296875))'