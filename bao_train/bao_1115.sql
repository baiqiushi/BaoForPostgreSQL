SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'west')   AND t.create_at between '2019-06-30 00:54:43' and '2019-07-01 00:54:43'   AND t.coordinate <@ box '((-74.26514198994141,40.80684030322266),(-74.25096511005859,40.812856196777346))'