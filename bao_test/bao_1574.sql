SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'smooth')   AND t.create_at between '2019-06-28 16:09:43' and '2019-08-10 16:09:43'   AND t.coordinate <@ box '((-81.07524687988281,33.98678410644531),(-81.04689312011719,33.99881589355469))'