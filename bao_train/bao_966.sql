SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'desert')   AND t.create_at between '2018-09-23 00:57:53' and '2019-09-05 00:57:53'   AND t.coordinate <@ box '((-115.07825267499268,32.99178991665283),(-115.07648056500733,32.99254190334717))'