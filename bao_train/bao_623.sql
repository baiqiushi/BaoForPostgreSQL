SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'sunset')   AND t.create_at between '2017-07-18 01:01:03' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-83.81177210998536,39.92924801330567),(-83.80822789001465,39.93075198669433))'