SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'grant')   AND t.create_at between '2015-11-26 00:44:43' and '2016-02-20 00:44:43'   AND t.coordinate <@ box '((-87.62369551374817,41.8786950016632),(-87.62325248625183,41.87888299833679))'