SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'open')   AND t.create_at between '2019-06-22 22:04:02' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-77.03004743994141,38.89494705322266),(-77.01587056005859,38.90096294677735))'