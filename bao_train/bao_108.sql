SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'work')   AND t.create_at between '2016-01-26 15:01:09' and '2016-01-27 15:01:09'   AND t.coordinate <@ box '((-80.07517260998536,34.37329111330567),(-80.07162839001465,34.374795086694334))'