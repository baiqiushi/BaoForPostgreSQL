SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'ww')   AND t.create_at between '2015-12-10 05:27:57' and '2015-12-31 05:27:57'   AND t.coordinate <@ box '((-86.08038574953125,39.69249287578125),(-85.96697071046876,39.74062002421875))'