SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'catsofinstagram')   AND t.create_at between '2017-02-19 21:11:27' and '2017-02-20 21:11:27'   AND t.coordinate <@ box '((-118.37211075687408,34.0878530008316),(-118.37188924312592,34.087946999168395))'