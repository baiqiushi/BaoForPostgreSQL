SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'jenniferrugglesphotography')   AND t.create_at between '2018-08-14 03:38:10' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-97.4833293899707,37.543667906611326),(-97.4762409500293,37.54667585338867))'