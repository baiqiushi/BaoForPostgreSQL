SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'carhop')   AND t.create_at between '2016-08-31 21:05:17' and '2016-09-02 21:05:17'   AND t.coordinate <@ box '((-90.381036678125,35.776483703124995),(-89.92737652187499,35.968992296875))'