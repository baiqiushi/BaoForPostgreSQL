SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'veterans')   AND t.create_at between '2016-09-22 18:42:59' and '2018-08-17 18:42:59'   AND t.coordinate <@ box '((-121.39229261374817,38.4084194016632),(-121.39184958625182,38.40860739833679))'