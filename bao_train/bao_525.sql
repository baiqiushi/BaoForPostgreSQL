SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'expo')   AND t.create_at between '2017-04-01 17:02:03' and '2017-04-11 17:02:03'   AND t.coordinate <@ box '((-77.58692838,39.188162139999996),(-70.32836587999999,42.26829964))'