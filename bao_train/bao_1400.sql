SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'celinedionmtl')   AND t.create_at between '2016-08-01 00:18:27' and '2016-08-02 00:18:27'   AND t.coordinate <@ box '((-98.36570751953124,56.93063642578125),(-98.25229248046875,56.97876357421875))'