SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'view')   AND t.create_at between '2016-05-22 20:02:16' and '2016-05-24 20:02:16'   AND t.coordinate <@ box '((-97.31396615687407,32.9940430008316),(-97.31374464312591,32.9941369991684))'