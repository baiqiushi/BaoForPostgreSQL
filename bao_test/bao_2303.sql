SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'come')   AND t.create_at between '2017-03-11 18:00:06' and '2017-03-13 18:00:06'   AND t.coordinate <@ box '((-89.76061441953125,39.67062992578125),(-89.64719938046876,39.71875707421875))'