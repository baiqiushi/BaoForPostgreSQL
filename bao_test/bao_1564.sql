SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'sweet')   AND t.create_at between '2019-06-11 17:05:08' and '2019-06-12 17:05:08'   AND t.coordinate <@ box '((-82.01776274625,41.07218836625),(-81.11044243375001,41.45720555375))'