SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'wyhte')   AND t.create_at between '2018-03-14 19:00:46' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-84.98391065624999,33.846420406250004),(-84.07659034375,34.23143759375))'