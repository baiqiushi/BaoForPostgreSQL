SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'night')   AND t.create_at between '2016-01-16 02:31:19' and '2016-01-17 02:31:19'   AND t.coordinate <@ box '((-81.80111357812501,41.465106003124994),(-81.347453421875,41.657614596875))'