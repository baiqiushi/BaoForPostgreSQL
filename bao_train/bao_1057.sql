SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'careerarc')   AND t.create_at between '2017-11-22 20:38:45' and '2018-02-16 20:38:45'   AND t.coordinate <@ box '((-104.8580855,27.6626116),(-46.7895855,52.3037116))'