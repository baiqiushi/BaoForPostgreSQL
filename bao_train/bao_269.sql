SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'physician')   AND t.create_at between '2016-05-28 15:52:50' and '2016-05-30 15:52:50'   AND t.coordinate <@ box '((-81.18826645687408,37.7781232008316),(-81.18804494312592,37.778217199168395))'