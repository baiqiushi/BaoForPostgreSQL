SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'going')   AND t.create_at between '2016-03-12 20:14:36' and '2016-03-13 20:14:36'   AND t.coordinate <@ box '((-87.2605979599414,36.545099203222655),(-87.24642108005858,36.551115096777345))'