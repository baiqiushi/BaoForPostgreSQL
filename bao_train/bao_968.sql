SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'check')   AND t.create_at between '2017-09-23 12:07:08' and '2017-11-05 12:07:08'   AND t.coordinate <@ box '((-74.93314565499267,40.22796110665283),(-74.93137354500732,40.22871309334717))'