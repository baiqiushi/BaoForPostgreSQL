SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'tx')   AND t.create_at between '2019-05-24 17:48:20' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-96.85369541953125,32.75260062578125),(-96.74028038046876,32.80072777421875))'