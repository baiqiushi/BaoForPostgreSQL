SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'best')   AND t.create_at between '2018-06-13 07:33:38' and '2019-05-26 07:33:38'   AND t.coordinate <@ box '((-105.69081125000001,45.753021249999996),(-98.43224875,48.83315875))'