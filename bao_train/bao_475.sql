SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'repostapp')   AND t.create_at between '2017-02-22 06:11:07' and '2017-02-23 06:11:07'   AND t.coordinate <@ box '((-125.50156249999999,30.9720625),(-110.9844375,37.1323375))'