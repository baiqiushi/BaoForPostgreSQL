SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'lincoln')   AND t.create_at between '2019-06-09 18:55:55' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-126.0917935,35.566867200000004),(-68.0232935,60.2079672))'