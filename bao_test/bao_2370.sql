SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'skip')   AND t.create_at between '2017-04-20 18:04:25' and '2017-04-21 18:04:25'   AND t.coordinate <@ box '((-123.32028881250001,37.4039188125),(-121.5056481875,38.1739531875))'