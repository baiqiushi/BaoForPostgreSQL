SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'wisconsin')   AND t.create_at between '2016-09-23 12:31:14' and '2016-11-05 12:31:14'   AND t.coordinate <@ box '((-88.40524421997071,44.26399602661133),(-88.3981557800293,44.267003973388675))'