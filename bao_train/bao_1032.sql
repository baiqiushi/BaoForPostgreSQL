SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'catching')   AND t.create_at between '2019-01-19 17:49:48' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-88.79762151374817,30.40980600166321),(-88.79717848625182,30.40999399833679))'