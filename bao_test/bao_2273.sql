SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'anyone')   AND t.create_at between '2017-02-12 06:47:50' and '2017-03-27 06:47:50'   AND t.coordinate <@ box '((-74.71276597988282,40.58079550644531),(-74.6844122201172,40.59282729355469))'