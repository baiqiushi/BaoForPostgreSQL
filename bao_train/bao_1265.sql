SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'ordering')   AND t.create_at between '2016-04-12 20:59:46' and '2016-04-22 20:59:46'   AND t.coordinate <@ box '((-75.23815673687407,39.8784156908316),(-75.23793522312592,39.878509689168396))'