SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hiring')   AND t.create_at between '2016-06-15 17:04:44' and '2016-09-09 17:04:44'   AND t.coordinate <@ box '((-77.03597650998535,38.902106313305666),(-77.03243229001464,38.90361028669433))'