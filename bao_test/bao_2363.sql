SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'uco')   AND t.create_at between '2017-04-18 00:41:35' and '2017-04-20 00:41:35'   AND t.coordinate <@ box '((-97.64169843994141,35.549282053222655),(-97.62752156005858,35.555297946777344))'