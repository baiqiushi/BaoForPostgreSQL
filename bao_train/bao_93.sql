SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'snowshoeing')   AND t.create_at between '2016-02-16 19:07:46' and '2016-02-18 19:07:46'   AND t.coordinate <@ box '((-119.2226142,34.141784099999995),(-61.154114199999995,58.782884100000004))'