SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hiring')   AND t.create_at between '2018-12-04 16:31:55' and '2018-12-05 16:31:55'   AND t.coordinate <@ box '((-87.3550293,23.842448400000002),(-72.8379043,30.0027234))'