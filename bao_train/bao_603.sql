SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'great')   AND t.create_at between '2017-06-28 20:53:59' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-85.65207405499268,30.190097006652834),(-85.65030194500733,30.190848993347167))'