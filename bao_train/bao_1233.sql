SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'radiology')   AND t.create_at between '2016-03-04 18:00:41' and '2016-03-25 18:00:41'   AND t.coordinate <@ box '((-86.65467725,38.50797884999999),(-79.39611475,41.58811635))'