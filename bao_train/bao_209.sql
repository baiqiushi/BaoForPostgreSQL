SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'pirosaint')   AND t.create_at between '2016-06-23 17:55:32' and '2016-06-28 17:55:32'   AND t.coordinate <@ box '((-88.523525,34.553925),(-59.489275,46.874475))'