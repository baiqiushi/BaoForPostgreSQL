SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'battle')   AND t.create_at between '2017-10-23 22:52:26' and '2017-11-02 22:52:26'   AND t.coordinate <@ box '((-85.18708843994142,42.316992053222656),(-85.1729115600586,42.323007946777345))'