SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'morethanwork')   AND t.create_at between '2017-02-15 23:24:39' and '2017-02-16 23:24:39'   AND t.coordinate <@ box '((-118.163133105,42.851407105),(-114.53385185500001,44.391475855))'