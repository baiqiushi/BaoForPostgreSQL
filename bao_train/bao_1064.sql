SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'work')   AND t.create_at between '2019-03-25 18:32:07' and '2019-03-26 18:32:07'   AND t.coordinate <@ box '((-96.94327560998535,32.86238921330567),(-96.93973139001464,32.863893186694334))'