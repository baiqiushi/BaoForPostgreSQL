SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'arizona')   AND t.create_at between '2017-03-11 21:45:50' and '2017-03-21 21:45:50'   AND t.coordinate <@ box '((-111.51670751953124,36.89023642578125),(-111.40329248046875,36.93836357421875))'