SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'highlight')   AND t.create_at between '2016-02-10 20:09:04' and '2016-02-15 20:09:04'   AND t.coordinate <@ box '((-115.22038859988281,36.26351130644531),(-115.19203484011719,36.27554309355469))'