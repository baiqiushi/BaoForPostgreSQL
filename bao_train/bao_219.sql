SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'miss')   AND t.create_at between '2016-07-04 01:08:50' and '2016-07-05 01:08:50'   AND t.coordinate <@ box '((-80.21491075687408,40.4454630008316),(-80.21468924312592,40.445556999168396))'