SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'join')   AND t.create_at between '2017-06-09 14:02:19' and '2017-06-14 14:02:19'   AND t.coordinate <@ box '((-73.92514367374817,40.75497683166321),(-73.92470064625182,40.755164828336795))'