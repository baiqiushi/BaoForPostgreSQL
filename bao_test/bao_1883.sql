SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'job')   AND t.create_at between '2016-06-13 17:48:20' and '2016-06-15 17:48:20'   AND t.coordinate <@ box '((-83.713548625,27.278576724999997),(-80.08426737500001,28.818645475))'