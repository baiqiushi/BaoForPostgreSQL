SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'luchacartel')   AND t.create_at between '2016-09-11 02:21:17' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-78.77355225000001,38.40847425),(-71.51498975,41.488611750000004))'