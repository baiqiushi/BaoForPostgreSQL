SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'n')   AND t.create_at between '2015-12-17 18:50:01' and '2015-12-27 18:50:01'   AND t.coordinate <@ box '((-92.21878575687408,29.8749690008316),(-92.21856424312593,29.875062999168396))'