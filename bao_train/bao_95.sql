SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'fog')   AND t.create_at between '2016-02-24 05:43:15' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-74.653350078125,39.266555703125),(-74.19968992187499,39.459064296875006))'