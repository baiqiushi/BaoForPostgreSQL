SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'go')   AND t.create_at between '2016-10-29 00:06:09' and '2017-01-23 00:06:09'   AND t.coordinate <@ box '((-75.15337687988281,38.77048410644531),(-75.12502312011719,38.78251589355469))'