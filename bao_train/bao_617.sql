SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'birthday')   AND t.create_at between '2017-07-11 16:31:38' and '2017-07-13 16:31:38'   AND t.coordinate <@ box '((-94.61893533988281,39.08973301644531),(-94.59058158011719,39.10176480355469))'