SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'want')   AND t.create_at between '2017-02-16 13:05:16' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-95.92469600000001,22.131680699999997),(-66.890446,34.4522307))'