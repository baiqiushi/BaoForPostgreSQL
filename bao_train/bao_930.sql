SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'porciúncula')   AND t.create_at between '2018-08-13 05:04:03' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-118.41592851953125,34.03903342578125),(-118.30251348046876,34.08716057421875))'