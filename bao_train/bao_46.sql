SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'florida')   AND t.create_at between '2015-12-25 21:07:43' and '2016-06-15 21:07:43'   AND t.coordinate <@ box '((-81.98338605499268,26.639224006652835),(-81.98161394500733,26.639975993347168))'