SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'jekyll')   AND t.create_at between '2016-03-11 20:48:27' and '2016-03-12 20:48:27'   AND t.coordinate <@ box '((-85.7702382899707,38.22183791661133),(-85.7631498500293,38.22484586338867))'