SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'bring')   AND t.create_at between '2016-09-27 22:05:43' and '2016-09-28 22:05:43'   AND t.coordinate <@ box '((-81.38012602749633,28.310541003326414),(-81.37923997250367,28.310916996673583))'