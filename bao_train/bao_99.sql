SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'make')   AND t.create_at between '2016-02-27 07:59:51' and '2016-02-29 07:59:51'   AND t.coordinate <@ box '((-118.37288605499268,34.08752400665283),(-118.37111394500732,34.08827599334717))'