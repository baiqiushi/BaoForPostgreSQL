SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'martini')   AND t.create_at between '2017-05-26 23:39:08' and '2019-04-20 23:39:08'   AND t.coordinate <@ box '((-87.45193444,22.68504582),(-72.93480944000001,28.845320819999998))'