SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'photo')   AND t.create_at between '2016-09-11 17:11:46' and '2017-03-03 17:11:46'   AND t.coordinate <@ box '((-92.41688576988281,34.71884318644531),(-92.38853201011719,34.73087497355469))'