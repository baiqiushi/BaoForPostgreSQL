SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'garden')   AND t.create_at between '2018-10-01 20:21:05' and '2018-10-02 20:21:05'   AND t.coordinate <@ box '((-77.98906551749633,39.44907420332642),(-77.98817946250367,39.44945019667358))'