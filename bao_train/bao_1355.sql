SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'church')   AND t.create_at between '2016-06-27 17:16:58' and '2016-07-02 17:16:58'   AND t.coordinate <@ box '((-118.84280044,22.860930309999997),(-60.774300440000005,47.502030309999995))'