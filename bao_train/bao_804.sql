SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'best')   AND t.create_at between '2017-05-01 16:09:17' and '2017-05-02 16:09:17'   AND t.coordinate <@ box '((-118.29970751953124,34.02813642578125),(-118.18629248046875,34.07626357421875))'