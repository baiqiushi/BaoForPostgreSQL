SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'jobs')   AND t.create_at between '2016-04-09 17:15:30' and '2016-04-10 17:15:30'   AND t.coordinate <@ box '((-97.47820615687408,35.6527853008316),(-97.47798464312592,35.6528792991684))'