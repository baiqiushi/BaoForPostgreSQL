SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'rwitherspoon')   AND t.create_at between '2016-08-22 14:59:42' and '2016-11-16 14:59:42'   AND t.coordinate <@ box '((-91.87568049,35.78691296),(-77.35855549,41.94718796))'