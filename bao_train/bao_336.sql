SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'job')   AND t.create_at between '2016-10-15 20:08:22' and '2016-10-20 20:08:22'   AND t.coordinate <@ box '((-118.3005277125,47.3088869125),(-116.48588708749999,48.078921287499995))'