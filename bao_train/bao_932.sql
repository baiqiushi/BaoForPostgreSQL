SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'labchowchowmix')   AND t.create_at between '2018-08-14 15:35:55' and '2018-08-15 15:35:55'   AND t.coordinate <@ box '((-120.55835375976562,46.58466821289063),(-120.50164624023438,46.60873178710937))'