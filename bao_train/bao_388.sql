SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'wear')   AND t.create_at between '2016-12-10 15:12:24' and '2017-06-01 15:12:24'   AND t.coordinate <@ box '((-85.13964302749633,41.08031200332642),(-85.13875697250367,41.08068799667358))'