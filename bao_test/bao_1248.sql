SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'terrace')   AND t.create_at between '2018-04-20 14:52:42' and '2018-04-25 14:52:42'   AND t.coordinate <@ box '((-128.61256687988282,54.51022620644531),(-128.58421312011717,54.52225799355469))'