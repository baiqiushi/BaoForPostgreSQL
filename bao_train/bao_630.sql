SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'filter')   AND t.create_at between '2017-07-29 23:46:55' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-91.08736077998536,30.494491063305663),(-91.08381656001465,30.495995036694335))'