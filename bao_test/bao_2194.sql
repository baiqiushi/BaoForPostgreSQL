SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'posted')   AND t.create_at between '2016-12-23 18:19:55' and '2016-12-24 18:19:55'   AND t.coordinate <@ box '((-92.43268791499267,31.336418916652832),(-92.43091580500732,31.337170903347165))'