SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'visit')   AND t.create_at between '2016-09-17 23:06:32' and '2017-03-09 23:06:32'   AND t.coordinate <@ box '((-78.83495887687408,40.266041600831606),(-78.83473736312592,40.2661355991684))'