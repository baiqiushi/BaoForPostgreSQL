SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'ban')   AND t.create_at between '2017-09-10 18:42:14' and '2017-09-11 18:42:14'   AND t.coordinate <@ box '((-81.4524817299707,39.41601273661133),(-81.44539329002929,39.41902068338867))'