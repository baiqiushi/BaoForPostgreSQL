SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'mouser')   AND t.create_at between '2017-05-30 01:51:13' and '2017-07-12 01:51:13'   AND t.coordinate <@ box '((-85.26907210998536,35.044748013305664),(-85.26552789001465,35.04625198669433))'