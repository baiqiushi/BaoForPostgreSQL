SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'chatting')   AND t.create_at between '2017-12-20 22:17:24' and '2018-02-01 22:17:24'   AND t.coordinate <@ box '((-117.27376687988281,33.18945410644531),(-117.24541312011719,33.20148589355469))'