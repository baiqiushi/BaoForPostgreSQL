SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'job')   AND t.create_at between '2016-11-10 16:28:44' and '2016-11-11 16:28:44'   AND t.coordinate <@ box '((-81.31265561374818,29.901149701663208),(-81.31221258625183,29.90133769833679))'