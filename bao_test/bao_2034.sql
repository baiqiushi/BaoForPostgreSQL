SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'nigerian')   AND t.create_at between '2016-09-04 18:56:45' and '2016-10-17 18:56:45'   AND t.coordinate <@ box '((-74.45442145624999,40.52824730625),(-73.54710114375,40.91326449375))'