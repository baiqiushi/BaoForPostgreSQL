SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'photo')   AND t.create_at between '2018-04-20 16:19:21' and '2018-04-30 16:19:21'   AND t.coordinate <@ box '((-71.07150151374817,42.355856001663206),(-71.07105848625183,42.356043998336794))'