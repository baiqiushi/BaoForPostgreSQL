SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'click')   AND t.create_at between '2016-05-13 12:27:33' and '2016-05-14 12:27:33'   AND t.coordinate <@ box '((-84.19476865499267,31.533741906652832),(-84.19299654500732,31.534493893347165))'