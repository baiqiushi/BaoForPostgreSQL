SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'going')   AND t.create_at between '2019-06-28 14:48:05' and '2019-07-19 14:48:05'   AND t.coordinate <@ box '((-84.52669587988281,39.09543210644531),(-84.49834212011719,39.10746389355469))'