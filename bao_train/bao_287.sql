SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'hospitality')   AND t.create_at between '2016-08-28 23:20:07' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-117.6729791199707,35.63321122661133),(-117.66589068002929,35.636219173388675))'