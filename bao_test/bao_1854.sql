SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'balloon')   AND t.create_at between '2016-05-30 15:47:48' and '2016-06-20 15:47:48'   AND t.coordinate <@ box '((-106.48603152749634,31.759982933326416),(-106.48514547250367,31.760358926673586))'