SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'release')   AND t.create_at between '2016-08-06 04:46:01' and '2016-08-16 04:46:01'   AND t.coordinate <@ box '((-113.27843839,21.523743550000003),(-55.209938390000005,46.16484355))'