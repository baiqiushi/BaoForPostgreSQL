SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'sinsundays')   AND t.create_at between '2016-05-15 17:47:17' and '2016-11-04 17:47:17'   AND t.coordinate <@ box '((-86.106020625,33.147185625),(-82.47673937500001,34.687254375))'