SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'healthcare')   AND t.create_at between '2015-12-07 22:46:47' and '2015-12-08 22:46:47'   AND t.coordinate <@ box '((-112.3614806199707,33.49187032661133),(-112.3543921800293,33.49487827338867))'