SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'want')   AND t.create_at between '2016-10-14 15:50:10' and '2016-10-15 15:50:10'   AND t.coordinate <@ box '((-77.20734862749633,39.11494630332642),(-77.20646257250367,39.11532229667358))'