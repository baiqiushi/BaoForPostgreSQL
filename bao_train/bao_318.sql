SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'grandcentralnyc')   AND t.create_at between '2016-06-27 18:24:39' and '2018-05-22 18:24:39'   AND t.coordinate <@ box '((-73.97728610687408,40.752759210831606),(-73.97706459312592,40.7528532091684))'