SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'still')   AND t.create_at between '2017-08-19 11:57:02' and '2017-11-13 11:57:02'   AND t.coordinate <@ box '((-72.84463915625,40.67667440625),(-71.93731884375,41.06169159375))'