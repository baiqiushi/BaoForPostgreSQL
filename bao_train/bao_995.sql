SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'nv')   AND t.create_at between '2017-10-20 18:59:56' and '2017-11-10 18:59:56'   AND t.coordinate <@ box '((-116.0568278325,35.782207742500006),(-114.2421872075,36.5522421175))'