SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'gospel')   AND t.create_at between '2016-05-02 23:30:56' and '2017-04-14 23:30:56'   AND t.coordinate <@ box '((-97.54864302749633,35.47948200332642),(-97.54775697250366,35.47985799667358))'