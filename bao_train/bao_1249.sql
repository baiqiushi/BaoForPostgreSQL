SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'dead')   AND t.create_at between '2016-04-01 09:27:19' and '2016-04-03 09:27:19'   AND t.coordinate <@ box '((-90.49538438998535,30.471105793305664),(-90.49184017001464,30.472609766694337))'