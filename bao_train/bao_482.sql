SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'rylee')   AND t.create_at between '2017-02-26 21:42:19' and '2018-02-08 21:42:19'   AND t.coordinate <@ box '((-121.31526442953124,38.65552949578125),(-121.20184939046875,38.70365664421875))'