SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'link')   AND t.create_at between '2019-06-13 17:36:03' and '2019-06-14 17:36:03'   AND t.coordinate <@ box '((-82.4402823199707,40.03127122661133),(-82.4331938800293,40.034279173388676))'