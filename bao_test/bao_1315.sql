SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'fire')   AND t.create_at between '2018-07-27 20:09:01' and '2018-10-21 20:09:01'   AND t.coordinate <@ box '((-129.7982815,42.4325035),(-115.28115650000001,48.5927785))'