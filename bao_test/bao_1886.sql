SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'lol')   AND t.create_at between '2016-06-15 02:35:53' and '2017-05-28 02:35:53'   AND t.coordinate <@ box '((-94.4286693699707,41.722583286611325),(-94.4215809300293,41.72559123338867))'