SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'terrace')   AND t.create_at between '2017-03-14 15:26:25' and '2017-04-04 15:26:25'   AND t.coordinate <@ box '((-132.22767125,52.976173349999996),(-124.96910874999999,56.05631085))'