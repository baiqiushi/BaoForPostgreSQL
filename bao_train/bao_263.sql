SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'posted')   AND t.create_at between '2016-08-08 19:00:26' and '2016-08-29 19:00:26'   AND t.coordinate <@ box '((-111.77432967988281,34.86444082644531),(-111.74597592011719,34.87647261355469))'