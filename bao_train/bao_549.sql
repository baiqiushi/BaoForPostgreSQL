SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'på')   AND t.create_at between '2017-04-23 07:33:13' and '2017-04-28 07:33:13'   AND t.coordinate <@ box '((-74.00098281374817,40.720661901663206),(-74.00053978625182,40.720849898336795))'