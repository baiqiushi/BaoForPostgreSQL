SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'thunderstorm')   AND t.create_at between '2016-04-21 02:22:10' and '2016-10-11 02:22:10'   AND t.coordinate <@ box '((-99.50209721988281,30.369337446445314),(-99.47374346011719,30.381369233554686))'