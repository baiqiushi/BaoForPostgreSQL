SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'websters')   AND t.create_at between '2016-04-08 12:12:45' and '2016-04-09 12:12:45'   AND t.coordinate <@ box '((-76.38023007812501,42.958045703124995),(-75.926569921875,43.150554296875))'