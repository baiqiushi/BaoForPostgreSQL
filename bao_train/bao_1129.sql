SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'click')   AND t.create_at between '2018-01-10 23:54:50' and '2018-01-20 23:54:50'   AND t.coordinate <@ box '((-91.801377125,34.193163125),(-88.17209587500001,35.733231875))'