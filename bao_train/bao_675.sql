SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'wells')   AND t.create_at between '2017-02-14 18:00:32' and '2017-02-15 18:00:32'   AND t.coordinate <@ box '((-90.21538495,33.19030005),(-82.95682244999999,36.270437550000004))'