SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'campbell')   AND t.create_at between '2016-08-24 17:55:07' and '2016-09-03 17:55:07'   AND t.coordinate <@ box '((-158.11360401953124,21.31132732578125),(-158.00018898046875,21.35945447421875))'