SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'suisun')   AND t.create_at between '2018-05-18 03:03:24' and '2018-06-08 03:03:24'   AND t.coordinate <@ box '((-129.28035486000002,35.16564554),(-114.76322986000001,41.32592054))'