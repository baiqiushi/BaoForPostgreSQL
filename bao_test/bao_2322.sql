SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'tattoos')   AND t.create_at between '2017-03-24 09:22:17' and '2017-03-25 09:22:17'   AND t.coordinate <@ box '((-87.5608803125,34.3525828125),(-85.7462396875,35.1226171875))'