SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'nationalgrilledcheeseday')   AND t.create_at between '2017-04-12 17:20:17' and '2017-04-14 17:20:17'   AND t.coordinate <@ box '((-77.02922151374817,38.8990060016632),(-77.02877848625182,38.89919399833679))'