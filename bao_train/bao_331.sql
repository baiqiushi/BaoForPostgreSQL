SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'kansas')   AND t.create_at between '2016-10-09 15:44:31' and '2016-10-10 15:44:31'   AND t.coordinate <@ box '((-94.62924134976562,39.04531433289063),(-94.57253383023438,39.06937790710937))'