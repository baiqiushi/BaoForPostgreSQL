SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'traffic')   AND t.create_at between '2016-12-26 15:50:23' and '2017-03-22 15:50:23'   AND t.coordinate <@ box '((-77.46679210998535,37.75735801330567),(-77.46324789001464,37.758861986694335))'