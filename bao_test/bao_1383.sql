SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'drumlife')   AND t.create_at between '2018-09-26 18:37:53' and '2018-12-21 18:37:53'   AND t.coordinate <@ box '((-79.09937036625,35.61089922625),(-78.19205005375001,35.995916413749995))'