SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'gimme')   AND t.create_at between '2017-10-04 00:10:32' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-91.900688035,29.194278835),(-88.27140678500001,30.734347585000002))'