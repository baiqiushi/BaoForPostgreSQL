SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'village')   AND t.create_at between '2016-08-10 20:03:39' and '2016-08-12 20:03:39'   AND t.coordinate <@ box '((-117.35161851374818,33.15830490166321),(-117.35117548625183,33.158492898336796))'