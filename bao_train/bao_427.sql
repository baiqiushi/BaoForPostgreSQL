SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'reason')   AND t.create_at between '2017-01-10 15:03:32' and '2017-01-12 15:03:32'   AND t.coordinate <@ box '((-117.37605,29.37015),(-59.307550000000006,54.011250000000004))'