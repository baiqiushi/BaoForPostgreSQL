SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'cubevenue')   AND t.create_at between '2017-04-20 07:21:24' and '2017-04-25 07:21:24'   AND t.coordinate <@ box '((-97.09054992749633,27.797979203326417),(-97.08966387250366,27.798355196673587))'