SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'jingle')   AND t.create_at between '2017-12-27 17:04:19' and '2017-12-28 17:04:19'   AND t.coordinate <@ box '((-96.50629015624999,41.04335440625),(-95.59896984375,41.42837159375))'