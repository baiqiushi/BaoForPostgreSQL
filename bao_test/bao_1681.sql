SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'tatted')   AND t.create_at between '2016-01-10 16:58:10' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-95.39349083997071,29.838791266611327),(-95.3864024000293,29.841799213388672))'