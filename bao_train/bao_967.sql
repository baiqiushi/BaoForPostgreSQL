SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hiring')   AND t.create_at between '2017-09-22 19:00:14' and '2018-03-14 19:00:14'   AND t.coordinate <@ box '((-81.92593421953124,26.52572522578125),(-81.81251918046875,26.573852374218752))'