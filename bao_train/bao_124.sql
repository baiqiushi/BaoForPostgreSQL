SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'california')   AND t.create_at between '2016-03-16 00:48:22' and '2016-04-28 00:48:22'   AND t.coordinate <@ box '((-121.95612165499267,37.35373190665283),(-121.95434954500732,37.35448389334717))'