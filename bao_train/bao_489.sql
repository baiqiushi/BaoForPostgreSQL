SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'string')   AND t.create_at between '2017-03-04 16:27:08' and '2017-03-25 16:27:08'   AND t.coordinate <@ box '((-77.09736347988282,38.88586050644531),(-77.0690097201172,38.89789229355469))'