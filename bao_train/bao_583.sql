SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'view')   AND t.create_at between '2016-12-15 00:20:53' and '2016-12-17 00:20:53'   AND t.coordinate <@ box '((-116.94695961997071,32.80679592661133),(-116.9398711800293,32.809803873388674))'