SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'friday')   AND t.create_at between '2019-04-24 20:29:00' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-70.94227687988281,42.42108410644531),(-70.91392312011719,42.43311589355469))'