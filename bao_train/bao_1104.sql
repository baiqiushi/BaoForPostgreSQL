SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'jobs')   AND t.create_at between '2017-12-23 17:09:58' and '2018-06-14 17:09:58'   AND t.coordinate <@ box '((-122.21569277988281,47.60413380644531),(-122.1873390201172,47.61616559355469))'