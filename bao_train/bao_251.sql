SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'near')   AND t.create_at between '2016-08-01 14:31:17' and '2017-01-21 14:31:17'   AND t.coordinate <@ box '((-88.08177210998535,42.02924801330567),(-88.07822789001465,42.030751986694334))'