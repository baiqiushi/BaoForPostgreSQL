SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'without')   AND t.create_at between '2016-03-02 03:36:03' and '2016-04-14 03:36:03'   AND t.coordinate <@ box '((-73.97227902749633,40.79841000332642),(-73.97139297250366,40.79878599667358))'