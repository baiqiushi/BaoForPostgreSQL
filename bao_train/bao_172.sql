SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'cvor')   AND t.create_at between '2016-05-18 18:36:41' and '2016-05-23 18:36:41'   AND t.coordinate <@ box '((-124.4040528,17.4398767),(-66.3355528,42.0809767))'