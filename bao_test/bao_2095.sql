SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'maroupieadventures')   AND t.create_at between '2016-10-09 11:38:26' and '2017-01-03 11:38:26'   AND t.coordinate <@ box '((-104.91071151374817,39.860916001663206),(-104.91026848625182,39.861103998336795))'