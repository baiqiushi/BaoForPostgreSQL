SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hiring')   AND t.create_at between '2017-11-27 20:37:26' and '2017-11-28 20:37:26'   AND t.coordinate <@ box '((-100.301631125,28.652623624999997),(-96.67234987500001,30.192692375))'