SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'train')   AND t.create_at between '2017-09-30 12:15:58' and '2017-10-01 12:15:58'   AND t.coordinate <@ box '((-73.97837602749632,40.75223030332642),(-73.97748997250366,40.752606296673584))'