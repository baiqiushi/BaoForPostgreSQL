SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'alypse')   AND t.create_at between '2016-07-02 18:21:03' and '2016-07-23 18:21:03'   AND t.coordinate <@ box '((-81.46268980499268,28.570076456652835),(-81.46091769500732,28.570828443347168))'