SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'art')   AND t.create_at between '2016-10-10 04:05:26' and '2016-10-11 04:05:26'   AND t.coordinate <@ box '((-79.9780851790625,40.3390215115625),(-79.7512551009375,40.4352758084375))'