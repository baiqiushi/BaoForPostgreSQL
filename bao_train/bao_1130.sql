SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'worktrip')   AND t.create_at between '2019-07-24 00:02:39' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-97.12913031374818,32.549298701663204),(-97.12868728625183,32.54948669833679))'