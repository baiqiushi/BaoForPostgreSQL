SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'new')   AND t.create_at between '2016-10-21 01:58:42' and '2016-12-03 01:58:42'   AND t.coordinate <@ box '((-72.80083605499267,41.70607400665283),(-72.79906394500732,41.70682599334717))'