SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'could')   AND t.create_at between '2016-08-06 14:42:06' and '2016-08-07 14:42:06'   AND t.coordinate <@ box '((-87.63024122749633,41.87792560332642),(-87.62935517250367,41.87830159667358))'