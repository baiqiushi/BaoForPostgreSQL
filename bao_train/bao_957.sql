SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'mind')   AND t.create_at between '2018-09-18 22:21:31' and '2018-10-09 22:21:31'   AND t.coordinate <@ box '((-84.7744300098828,33.74617719644531),(-84.74607625011718,33.75820898355469))'