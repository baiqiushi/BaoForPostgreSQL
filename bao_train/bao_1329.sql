SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'es')   AND t.create_at between '2016-06-10 17:09:59' and '2018-05-05 17:09:59'   AND t.coordinate <@ box '((-158.11028351994142,21.585653723222656),(-158.0961066400586,21.591669616777345))'