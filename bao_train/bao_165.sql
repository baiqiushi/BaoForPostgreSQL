SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'regional')   AND t.create_at between '2016-05-08 21:41:50' and '2016-06-20 21:41:50'   AND t.coordinate <@ box '((-94.0503961199707,33.42642892661133),(-94.04330768002929,33.429436873388674))'