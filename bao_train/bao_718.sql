SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'instagram')   AND t.create_at between '2017-03-08 21:18:18' and '2017-03-09 21:18:18'   AND t.coordinate <@ box '((-80.19364801998535,25.758086023305665),(-80.19010380001464,25.759589996694338))'