SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'job')   AND t.create_at between '2017-10-28 20:34:46' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-85.76756801953124,31.29658982578125),(-85.65415298046875,31.344716974218752))'