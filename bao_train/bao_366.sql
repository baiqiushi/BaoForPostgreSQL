SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'brave')   AND t.create_at between '2016-11-11 17:17:09' and '2016-11-13 17:17:09'   AND t.coordinate <@ box '((-96.60097687988281,39.18408410644531),(-96.57262312011719,39.19611589355469))'