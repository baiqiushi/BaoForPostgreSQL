SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'soooooo')   AND t.create_at between '2018-05-03 22:00:54' and '2018-05-08 22:00:54'   AND t.coordinate <@ box '((-75.31393755749633,40.02857452332642),(-75.31305150250367,40.02895051667358))'