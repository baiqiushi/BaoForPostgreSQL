SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'emeraldcitysurfshop')   AND t.create_at between '2016-06-22 23:44:12' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-120.80875125,31.144401249999998),(-113.55018874999999,34.22453875))'