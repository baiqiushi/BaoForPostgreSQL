SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'sb')   AND t.create_at between '2019-07-29 18:37:28' and '2019-08-03 18:37:28'   AND t.coordinate <@ box '((-74.23824475976562,40.74436221289063),(-74.18153724023438,40.76842578710937))'