SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'concert')   AND t.create_at between '2018-12-04 08:19:57' and '2018-12-05 08:19:57'   AND t.coordinate <@ box '((-102.61133731999999,26.68824926),(-88.09421232,32.84852426))'