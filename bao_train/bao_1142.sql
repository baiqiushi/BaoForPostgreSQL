SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'rain')   AND t.create_at between '2018-01-22 12:45:04' and '2019-01-04 12:45:04'   AND t.coordinate <@ box '((-121.281274518125,39.145967923125),(-120.82761436187499,39.338476516875005))'