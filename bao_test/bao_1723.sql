SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'equipo')   AND t.create_at between '2016-02-09 00:27:49' and '2016-02-11 00:27:49'   AND t.coordinate <@ box '((-80.12091504749633,25.936782693326414),(-80.12002899250366,25.937158686673584))'