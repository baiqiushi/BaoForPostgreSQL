SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'architecture')   AND t.create_at between '2015-12-07 19:56:40' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-87.68451075687408,41.8368530008316),(-87.68428924312592,41.8369469991684))'