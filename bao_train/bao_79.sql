SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'airport')   AND t.create_at between '2016-02-02 11:06:32' and '2017-01-14 11:06:32'   AND t.coordinate <@ box '((-157.92294302749636,21.318423113326414),(-157.92205697250367,21.318799106673584))'