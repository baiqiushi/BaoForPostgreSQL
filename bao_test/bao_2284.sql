SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'broken')   AND t.create_at between '2017-02-21 09:27:35' and '2017-02-22 09:27:35'   AND t.coordinate <@ box '((-119.1334150390625,35.321872851562496),(-118.9065849609375,35.4181271484375))'