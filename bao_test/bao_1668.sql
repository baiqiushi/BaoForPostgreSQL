SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'mall')   AND t.create_at between '2015-12-22 17:06:18' and '2019-09-07 04:16:11'   AND t.coordinate <@ box '((-117.684239438125,33.813689153125),(-117.230579281875,34.006197746875))'