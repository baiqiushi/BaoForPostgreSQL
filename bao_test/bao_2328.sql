SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'latest')   AND t.create_at between '2017-03-28 19:39:40' and '2019-02-20 19:39:40'   AND t.coordinate <@ box '((-74.8932617125,40.328492512500006),(-73.0786210875,41.0985268875))'