SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'driver')   AND t.create_at between '2018-09-01 19:56:17' and '2018-09-02 19:56:17'   AND t.coordinate <@ box '((-95.91964265687407,36.1395824008316),(-95.91942114312592,36.139676399168394))'