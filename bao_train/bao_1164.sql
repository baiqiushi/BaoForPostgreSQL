SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'fresno')   AND t.create_at between '2015-12-05 05:44:55' and '2016-05-26 05:44:55'   AND t.coordinate <@ box '((-119.75435832994141,36.80943243322265),(-119.74018145005859,36.81544832677734))'