SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'festival')   AND t.create_at between '2016-08-26 19:54:19' and '2016-08-27 19:54:19'   AND t.coordinate <@ box '((-78.90199171374817,37.7122004016632),(-78.90154868625183,37.71238839833679))'