SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'work')   AND t.create_at between '2017-03-19 15:57:19' and '2017-05-01 15:57:19'   AND t.coordinate <@ box '((-96.79787395499268,32.77628820665283),(-96.79610184500733,32.77704019334717))'