SELECT id,        coordinate   FROM tweets_100m t  WHERE to_tsvector('english', t.text)@@to_tsquery('english', 'caturday')   AND t.create_at between '2017-03-25 21:08:59' and '2017-03-30 21:08:59'   AND t.coordinate <@ box '((-122.02796443994141,37.92975505322266),(-122.01378756005859,37.935770946777346))'