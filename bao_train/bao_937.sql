SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'sinner')   AND t.create_at between '2018-08-23 16:32:26' and '2018-10-05 16:32:26'   AND t.coordinate <@ box '((-84.39660775976562,33.83593621289063),(-84.33990024023437,33.85999978710937))'