SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hiring')   AND t.create_at between '2018-01-16 15:47:22' and '2018-01-18 15:47:22'   AND t.coordinate <@ box '((-81.45424272749634,28.577416103326414),(-81.45335667250367,28.577792096673583))'