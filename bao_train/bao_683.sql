SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'rp')   AND t.create_at between '2017-09-27 00:14:23' and '2017-09-28 00:14:23'   AND t.coordinate <@ box '((-88.69223672000001,34.76185482),(-59.657986720000004,47.08240482))'