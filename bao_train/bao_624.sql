SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'head')   AND t.create_at between '2017-07-22 02:52:08' and '2019-06-16 02:52:08'   AND t.coordinate <@ box '((-77.99021075687408,33.8618530008316),(-77.98998924312592,33.861946999168396))'