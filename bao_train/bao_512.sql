SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'new')   AND t.create_at between '2017-03-24 00:34:39' and '2017-04-03 00:34:39'   AND t.coordinate <@ box '((-90.06710397998535,29.946495933305663),(-90.06355976001464,29.947999906694335))'