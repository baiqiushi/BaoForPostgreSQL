SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'veterans')   AND t.create_at between '2017-10-17 12:00:10' and '2017-10-18 12:00:10'   AND t.coordinate <@ box '((-126.4431769,27.333895400000003),(-97.40892690000001,39.6544454))'