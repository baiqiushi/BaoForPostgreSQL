SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'walker')   AND t.create_at between '2018-09-10 02:23:07' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-88.82785587625,40.26461613625),(-87.92053556375001,40.649633323749995))'