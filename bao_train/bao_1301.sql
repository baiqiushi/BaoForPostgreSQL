SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'ave')   AND t.create_at between '2016-05-14 07:28:49' and '2016-05-16 07:28:49'   AND t.coordinate <@ box '((-86.04654302749633,39.89049200332642),(-86.04565697250366,39.890867996673585))'