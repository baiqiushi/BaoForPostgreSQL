SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'sorry')   AND t.create_at between '2016-11-18 17:28:25' and '2016-11-23 17:28:25'   AND t.coordinate <@ box '((-85.95561967625,35.97999269625),(-85.04829936375,36.36500988375))'