SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'consultant')   AND t.create_at between '2017-10-22 16:29:55' and '2017-10-24 16:29:55'   AND t.coordinate <@ box '((-77.08821620998535,38.88888941330567),(-77.08467199001464,38.890393386694335))'