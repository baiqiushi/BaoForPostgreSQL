SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'great')   AND t.create_at between '2015-12-18 17:11:04' and '2015-12-19 17:11:04'   AND t.coordinate <@ box '((-88.00872955499268,41.87965360665283),(-88.00695744500733,41.88040559334717))'