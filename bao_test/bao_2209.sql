SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'recommend')   AND t.create_at between '2017-01-02 20:18:04' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-84.90441507988281,39.82292100644531),(-84.87606132011719,39.83495279355469))'