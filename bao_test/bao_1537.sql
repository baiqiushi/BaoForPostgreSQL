SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'link')   AND t.create_at between '2019-04-27 17:01:07' and '2019-04-29 17:01:07'   AND t.coordinate <@ box '((-114.68291827988281,47.603088206445314),(-114.65456452011719,47.61511999355469))'