SELECT id,        coordinate   FROM tweets t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'visit')   AND t.create_at between '2017-08-16 20:30:09' and '2017-08-26 20:30:09'   AND t.coordinate <@ box '((-78.078505925,38.201780525),(-74.44922467500001,39.741849275))'