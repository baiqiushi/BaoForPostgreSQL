SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'nettempsjobs')   AND t.create_at between '2015-12-04 16:05:18' and '2015-12-05 16:05:18'   AND t.coordinate <@ box '((-115.00451275976562,36.02552891289063),(-114.94780524023437,36.04959248710937))'