SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'catch')   AND t.create_at between '2017-11-23 12:45:02' and '2018-11-05 12:45:02'   AND t.coordinate <@ box '((-73.97473647988281,41.18984210644531),(-73.94638272011719,41.20187389355469))'