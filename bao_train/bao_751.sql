SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'kellers')   AND t.create_at between '2017-03-28 09:57:40' and '2017-04-02 09:57:40'   AND t.coordinate <@ box '((-105.10351736999999,27.069234740000002),(-90.58639237,33.229509740000005))'