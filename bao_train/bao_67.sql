SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'topshop')   AND t.create_at between '2016-01-20 20:05:52' and '2016-07-11 20:05:52'   AND t.coordinate <@ box '((-73.97792175687408,40.7579823208316),(-73.97770024312592,40.758076319168396))'