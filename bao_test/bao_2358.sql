SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'current')   AND t.create_at between '2017-04-15 10:20:03' and '2017-10-05 10:20:03'   AND t.coordinate <@ box '((-75.17417687988281,39.94398410644531),(-75.14582312011719,39.95601589355469))'