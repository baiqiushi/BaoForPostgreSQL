SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'new')   AND t.create_at between '2018-11-30 03:17:03' and '2019-01-12 03:17:03'   AND t.coordinate <@ box '((-88.54711075687408,47.119453000831605),(-88.54688924312592,47.1195469991684))'