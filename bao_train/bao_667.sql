SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'job')   AND t.create_at between '2017-09-11 22:47:31' and '2017-10-24 22:47:31'   AND t.coordinate <@ box '((-95.18275715624999,31.14573200625),(-94.27543684375,31.530749193749998))'