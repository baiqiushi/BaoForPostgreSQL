SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'peoplesoft')   AND t.create_at between '2017-02-18 13:35:33' and '2017-08-10 13:35:33'   AND t.coordinate <@ box '((-83.37720785499268,42.46410350665283),(-83.37543574500732,42.46485549334717))'