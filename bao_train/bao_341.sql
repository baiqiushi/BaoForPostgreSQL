SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'north')   AND t.create_at between '2016-07-11 12:48:34' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-75.18920143994141,39.84325105322266),(-75.17502456005859,39.84926694677735))'