SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'end')   AND t.create_at between '2016-10-16 01:52:39' and '2016-10-26 01:52:39'   AND t.coordinate <@ box '((-71.07327751374817,42.33962800166321),(-71.07283448625182,42.339815998336796))'