SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'link')   AND t.create_at between '2019-01-29 17:04:58' and '2019-02-19 17:04:58'   AND t.coordinate <@ box '((-69.97771800998535,43.926791513305666),(-69.97417379001465,43.92829548669433))'