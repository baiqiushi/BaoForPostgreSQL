SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'academy')   AND t.create_at between '2016-09-06 20:28:35' and '2016-09-07 20:28:35'   AND t.coordinate <@ box '((-76.93905151374817,38.981506001663206),(-76.93860848625182,38.981693998336794))'