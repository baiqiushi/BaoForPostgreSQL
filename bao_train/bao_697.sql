SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'go')   AND t.create_at between '2017-02-25 07:38:49' and '2019-01-20 07:38:49'   AND t.coordinate <@ box '((-113.44633771374818,53.4832398016632),(-113.44589468625183,53.48342779833679))'