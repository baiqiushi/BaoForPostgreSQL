SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'mn')   AND t.create_at between '2019-06-30 15:23:59' and '2019-07-10 15:23:59'   AND t.coordinate <@ box '((-94.4193947425,45.4272135825),(-92.6047541175,46.1972479575))'