SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'achilles')   AND t.create_at between '2016-10-19 08:06:06' and '2016-12-01 08:06:06'   AND t.coordinate <@ box '((-96.80177210998535,32.782548013305664),(-96.79822789001464,32.78405198669433))'