SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'state')   AND t.create_at between '2018-08-11 20:28:46' and '2018-08-12 20:28:46'   AND t.coordinate <@ box '((-115.11866617994141,36.14259737322266),(-115.10448930005859,36.148613266777346))'