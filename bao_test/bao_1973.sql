SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'roadtohana')   AND t.create_at between '2016-07-28 10:18:11' and '2016-07-30 10:18:11'   AND t.coordinate <@ box '((-156.14551217499266,20.863064296652833),(-156.14374006500734,20.863816283347166))'