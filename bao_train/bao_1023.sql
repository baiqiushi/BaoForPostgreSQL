SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'wind')   AND t.create_at between '2018-12-30 10:12:32' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-114.98354421997071,36.02849602661133),(-114.9764557800293,36.03150397338867))'