SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hood')   AND t.create_at between '2016-06-12 16:11:50' and '2016-07-25 16:11:50'   AND t.coordinate <@ box '((-111.02283291374818,32.312762801663204),(-111.02238988625183,32.31295079833679))'