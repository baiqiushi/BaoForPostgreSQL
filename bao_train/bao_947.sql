SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'time')   AND t.create_at between '2017-09-05 18:41:47' and '2017-09-06 18:41:47'   AND t.coordinate <@ box '((-114.7927057,25.932114699999996),(-56.7242057,50.573214699999994))'