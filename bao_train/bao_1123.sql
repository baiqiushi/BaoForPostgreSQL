SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'done')   AND t.create_at between '2018-01-09 07:35:51' and '2018-07-01 07:35:51'   AND t.coordinate <@ box '((-118.38369106374817,34.086915501663206),(-118.38324803625183,34.087103498336795))'