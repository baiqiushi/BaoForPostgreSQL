SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'cheering')   AND t.create_at between '2017-04-03 21:20:27' and '2017-09-23 21:20:27'   AND t.coordinate <@ box '((-73.86041914988282,40.75072175644531),(-73.8320653901172,40.76275354355469))'