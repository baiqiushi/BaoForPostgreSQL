SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'blazing')   AND t.create_at between '2016-09-10 12:47:22' and '2016-09-20 12:47:22'   AND t.coordinate <@ box '((-95.46488143994141,29.718253053222654),(-95.45070456005858,29.724268946777343))'