SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'spend')   AND t.create_at between '2018-04-13 17:45:16' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-93.45893069687408,41.6443650208316),(-93.45870918312592,41.644459019168394))'