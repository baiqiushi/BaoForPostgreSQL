SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'mind')   AND t.create_at between '2016-08-17 13:50:51' and '2016-09-07 13:50:51'   AND t.coordinate <@ box '((-88.17066881998535,43.66477849330567),(-88.16712460001465,43.666282466694334))'