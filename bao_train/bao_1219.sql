SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'mariah')   AND t.create_at between '2016-02-13 19:44:07' and '2016-03-27 19:44:07'   AND t.coordinate <@ box '((-82.53747855499267,28.078144306652835),(-82.53570644500732,28.078896293347167))'