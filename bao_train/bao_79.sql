SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'harpoon')   AND t.create_at between '2016-01-11 18:41:52' and '2016-01-12 18:41:52'   AND t.coordinate <@ box '((-71.03581798499268,42.34665506665283),(-71.03404587500732,42.34740705334717))'