SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'cleveland')   AND t.create_at between '2017-03-20 20:11:19' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-81.977070435,25.163022424999998),(-78.34778918500001,26.703091175))'