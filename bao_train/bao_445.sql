SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'python')   AND t.create_at between '2017-01-31 16:44:01' and '2017-02-10 16:44:01'   AND t.coordinate <@ box '((-104.4178025,27.780735599999996),(-46.34930249999999,52.421835599999994))'