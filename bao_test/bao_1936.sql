SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'mountain')   AND t.create_at between '2016-07-06 23:25:25' and '2016-09-30 23:25:25'   AND t.coordinate <@ box '((-85.34855902749634,34.97349637332642),(-85.34767297250367,34.97387236667358))'