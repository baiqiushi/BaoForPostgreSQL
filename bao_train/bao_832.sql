SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'careerarc')   AND t.create_at between '2017-05-19 13:07:50' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-82.3607695125,41.2203094125),(-80.54612888749999,41.990343787499995))'