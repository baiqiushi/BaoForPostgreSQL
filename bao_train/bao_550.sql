SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'one')   AND t.create_at between '2017-04-23 17:53:56' and '2017-05-14 17:53:56'   AND t.coordinate <@ box '((-80.08593855499268,26.723453306652832),(-80.08416644500733,26.724205293347165))'