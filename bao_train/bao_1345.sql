SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'channing')   AND t.create_at between '2016-06-22 21:19:09' and '2016-09-16 21:19:09'   AND t.coordinate <@ box '((-81.74554567953125,41.47844889578125),(-81.63213064046876,41.52657604421875))'