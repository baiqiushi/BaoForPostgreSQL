SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'release')   AND t.create_at between '2016-07-07 12:58:54' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-84.19946505499267,34.02854990665283),(-84.19769294500732,34.02930189334717))'