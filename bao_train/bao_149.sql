SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'tff')   AND t.create_at between '2016-04-25 03:09:22' and '2017-04-07 03:09:22'   AND t.coordinate <@ box '((-73.98739831374817,40.751251681663206),(-73.98695528625183,40.751439678336794))'