SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'longer')   AND t.create_at between '2018-08-02 01:21:02' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-73.533791078125,40.623311703125),(-73.080130921875,40.815820296875))'