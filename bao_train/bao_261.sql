SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'crown')   AND t.create_at between '2016-05-20 12:02:51' and '2016-05-21 12:02:51'   AND t.coordinate <@ box '((-75.22464487988282,39.91180110644531),(-75.1962911201172,39.92383289355469))'