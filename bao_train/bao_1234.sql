SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'pier')   AND t.create_at between '2016-03-07 02:12:17' and '2017-02-17 02:12:17'   AND t.coordinate <@ box '((-94.9036750390625,29.239636851562498),(-94.6768449609375,29.3358911484375))'