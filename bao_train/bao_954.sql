SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hurricaneflorence')   AND t.create_at between '2018-09-10 13:45:35' and '2018-09-12 13:45:35'   AND t.coordinate <@ box '((-79.81965375976563,36.061068212890625),(-79.76294624023438,36.08513178710937))'